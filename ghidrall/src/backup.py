from llvmlite import ir
import xml.etree.ElementTree as et
import r2pipe

int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
void_type = ir.VoidType()
functions = {}
bad_funcs = ['entry0',
             'sym.deregister_tm_clones',
             'sym.register_tm_clones',
             'entry.fini0',
             'entry.init0',
             'sym.__libc_csu_fini',
             'sym._fini',
             'sym.__libc_csu_init',
             'sym._init',
             'sym._dl_relocate_static_pie',
             ]
temps = {}


def lift_binary(target_binary):
    r = r2pipe.open(target_binary)
    module = ir.Module(name="lifted")
    module.data_layout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
    module.triple = "x86_64-pc-linux-gnu"
    r.cmd('aa')
    function_list = r.cmd('afl')
    for line in function_list.splitlines():
        function_name = line.split()[-1]
        functions[function_name] = create_function_signature(function_name, r, module)
    for function_name in list(functions.keys()):
        ir_func, function_xml, func_return = functions[function_name]
        lift(ir_func, function_xml, func_return)
    return module


def create_function_signature(function_name, r, module):
    r.cmd("s " + function_name)
    pdg = r.cmd('pdg')
    f = open(function_name + ".xml", 'w')
    f.write(pdg)
    f.close()
    function_xml = et.fromstring(pdg)
    name = function_xml.find('name').text
    xml_args = function_xml.find('args').findall('var')
    return_type = function_xml.find('return')
    if return_type.find('type').text == "undefined8":
        func_return = ir.VoidType()
    else:
        func_return = ir.IntType(8 * int(return_type.find('size').text))
    args = []
    for arg in xml_args:
        args.append(ir.IntType(8 * int(arg.find('size').text)))
    func_type = ir.FunctionType(func_return, args)
    ir_func = ir.Function(module, func_type, name)
    return ir_func, function_xml, func_return


def lift(ir_func, function_xml, func_return):
    xml_block_list = function_xml.find("block_graph").findall("block")
    locals_list = function_xml.find("locals")
    local_vars, ir_blocks, xml_blocks = build_cfg_and_local_declarations(xml_block_list, ir_func, locals_list)
    populate_cfg(local_vars, ir_blocks, xml_blocks, ir_func, func_return)


def build_cfg_and_local_declarations(xml_block_list, ir_func, locals_list):
    local_vars, ir_blocks, xml_blocks = {}, {}, {}
    entry_block = ir_func.append_basic_block("entry")
    entry_builder = ir.IRBuilder(entry_block)
    for local in locals_list.findall("var"):
        size = int(local.find("size").text) * 8
        name = local.find("name").text
        local_vars[name] = entry_builder.alloca(ir.IntType(size), name=name)
    for xml_block in xml_block_list:
        label = format_label(xml_block.find("label").find("address").text)
        block = ir_func.append_basic_block(label)
        ir_blocks[label] = block
        xml_blocks[label] = xml_block
    entry_builder.branch(list(ir_blocks.values())[0])
    return local_vars, ir_blocks, xml_blocks


def populate_cfg(local_vars, ir_blocks, xml_blocks, ir_func, func_return):
    for label in list(ir_blocks.keys()):
        ir_block = ir_blocks[label]
        xml_block = xml_blocks[label]
        builder = ir.IRBuilder(ir_block)
        branched = False
        for instruction in xml_block.find("ops").findall("op"):
            opname = instruction.find("opname").text
            if opname == "CALL":
                inputs = instruction.find("inputs").findall("input")
                call_target = inputs[0].find("symbol").text
                args = []
                for arg in inputs[1:]:
                    args.append(fetch_input(builder, arg, ir_func, local_vars))
                result = builder.call(functions[call_target][0], args=args)
            elif opname == "RETURN":
                if type(func_return) is type(ir.VoidType()):
                    builder.ret_void()
                else:
                    builder.ret_void()
                branched = True
            elif opname == "BRANCH":
                target = instruction.find("inputs").find("input").find("symbol").text
                builder.branch(ir_blocks[format_label(target)])
                branched = True
            elif opname == "CBRANCH":
                inputs = instruction.find("inputs").findall("input")
                true_branch = format_label(inputs[0].find("symbol").text)
                conditional = fetch_input(builder, inputs[1], ir_func, local_vars)
                for branch in xml_block.find("out_branches").findall("branch_target"):
                    if branch.text == true_branch:
                        pass
                    else:
                        false_branch = branch.text
                builder.cbranch(conditional, ir_blocks[true_branch], ir_blocks[false_branch])
                branched = True
            elif opname == "SUBPIECE":
                output = fetch_output(builder, instruction.find("output"), local_vars)
                inputs = instruction.find("inputs").findall("input")
                argument = fetch_input(builder, inputs[0], ir_func, local_vars)
                offset = fetch_input(builder, inputs[1], ir_func, local_vars)
                if inputs[1].find("symbol").text == "0":
                    result = builder.trunc(argument, ir.IntType(int(inputs[1].find("size").text) * 8))
                store(builder, output, result)
            elif opname == "INT_SLESS":
                inputs = instruction.find("inputs").findall("input")
                target = instruction.find("output")
                lhs = fetch_input(builder, inputs[0], ir_func, local_vars)
                rhs = fetch_input(builder, inputs[1], ir_func, local_vars)
                output = fetch_output(builder, target, local_vars)
                store(builder, output, builder.icmp_signed('<', lhs, rhs))
            elif opname == "COPY":
                output = fetch_output(builder, instruction.find("output"), local_vars)
                result = fetch_input(builder, instruction.find("inputs").find("input"), ir_func, local_vars)
                store(builder, output, result)
            elif opname == "INT_AND":
                inputs = instruction.find("inputs").findall("input")
                target = instruction.find("output")
                lhs = fetch_input(builder, inputs[0], ir_func, local_vars)
                rhs = fetch_input(builder, inputs[1], ir_func, local_vars)
                output = fetch_output(builder, target, local_vars)
                store(builder, output, builder.add(lhs, rhs))
            elif opname == "INT_ZEXT":
                inputs = instruction.find("inputs").findall("input")
                target = instruction.find("output")
                lhs = fetch_input(builder, inputs[0], ir_func, local_vars)
                target_type = ir.IntType(8 * int(target.find("size").text))
                output = fetch_output(builder, target, local_vars)
                store(builder, output, builder.zext(lhs, target_type))

        if not branched:
            builder.branch(ir_blocks[xml_block.find("out_branches").find("branch_target").text])


def format_label(label):
    if label[:2] == '0x':
        label = label[2:]
    new_label = '0x' + label.zfill(8)
    return new_label


def fetch_input(builder, arg_xml, ir_func, local_vars):
    symbol = arg_xml.find("symbol").text
    if "var" in symbol:
        symbol = symbol.split('.')[0]
    size = int(arg_xml.find("size").text)
    if "arg" in symbol:
        val = int(symbol.split("arg")[1]) - 1
        return ir_func.args[val]
    elif symbol in local_vars:
        return builder.load(local_vars[symbol])
    elif "register" in symbol:
        return temps[symbol]
    elif "unique" in symbol:
        return temps[symbol]
    else:
        if "0x" in symbol:
            val = int(symbol, 16)
        else:
            val = int(symbol)
        return ir.Constant(ir.IntType(8 * size), val)


def fetch_output(builder, arg_xml, local_vars):
    symbol = arg_xml.find("symbol").text
    if "var" in symbol:
        symbol = symbol.split('.')[0]
    size = int(arg_xml.find("size").text)
    if "register" in symbol:
        return symbol
    elif "unique" in symbol:
        return symbol
    elif symbol.split('.')[0] in local_vars:
        symbol = symbol.split('.')[0]
        try:
            offset = 8 * int(arg_xml.find("symbol").get("offset"))
            size = 8 * int(arg_xml.find("symbol").get("size"))
            success = True
        except:
            success = False
        if success:
            output = builder.gep(local_vars[symbol], [ir.Constant(ir.IntType(size), offset)])
            return output
        else:
            return local_vars[symbol]
    else:
        print("what?")
    return


def store(builder, output, result):
    if isinstance(output, str):
        if "unique" in output or "register" in output:
            temps[output] = result
    elif output.type.is_pointer:
        if output.type != result.type:
            output = builder.bitcast(output, result.type.as_pointer())
        builder.store(result, output)