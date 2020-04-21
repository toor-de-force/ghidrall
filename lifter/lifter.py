from llvmlite import ir
import llvmlite.binding as llvm
import xml.etree.ElementTree as et
import argparse
import os
import sys
import r2pipe

int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
void_type = ir.VoidType()
function_names = []
temps = {}


def main():
    parser = argparse.ArgumentParser(description="Lift the provided binary to LLVM")
    parser.add_argument('Path', metavar='path', type=str, help='the path to the target binary')
    args = parser.parse_args()
    target_binary = args.Path
    if not os.path.isfile(target_binary):
        print('Not a valid input file')
        sys.exit()
    r = r2pipe.open(target_binary)
    r.cmd('aa')
    r.cmd('s main')
    main_xml_output = r.cmd('pdg')
    main_file = open("main.xml", "w")
    main_file.write(main_xml_output)
    main_file.close()
    r.cmd('aa')
    r.cmd('s sym.multiple')
    multiple_xml_output = r.cmd('pdg')
    multiple_file = open("multiple.xml", "w")
    multiple_file.write(multiple_xml_output)
    multiple_file.close()
    lift()


def lift():
    filename = "main.xml"
    root = et.parse(filename).getroot()
    filename = "multiple.xml"
    root_multiple = et.parse(filename).getroot()
    module = ir.Module(name="lifted")
    functions = {}
    # lifting multiple

    return_size = root_multiple.find("return").find("size").text
    func_return = ir.IntType(int(return_size) * 8)
    args = root_multiple.find("args")
    arguments = []
    for argument in args.findall("var"):
        arguments.append(ir.IntType(int(argument.find("size").text) * 8))
    fnty = ir.FunctionType(func_return, arguments)
    name = root_multiple.find('name').text
    address = root_multiple.find('address').text
    ir_multiple = ir.Function(module, fnty, name)
    functions[name] = ir_multiple
    blocks = {}
    xml_blocks = {}
    entry_block = ir_multiple.append_basic_block("entry")
    for xml_block in root_multiple.find("block_graph").findall("block"):
        label = format_label(xml_block.find("label").find("address").text)
        block = ir_multiple.append_basic_block(label)
        blocks[label] = block
        xml_blocks[label] = xml_block
    builder = ir.IRBuilder(entry_block)
    locals_element = root_multiple.find("locals")
    local_vars = {}
    for local in locals_element.findall("var"):
        size = int(local.find("size").text) * 8
        name = local.find("name").text
        local_vars[name] = builder.alloca(ir.IntType(size), name=name)
    args = root_multiple.find("args").findall("var")
    i = 0
    for arg in args:
        local_vars[arg.find("name").text] = (list(ir_multiple.args))[i]
        i += 1
    builder.branch(list(blocks.values())[0])
    i = 1
    for block_key in list(blocks.keys()):
        block = blocks[block_key]
        builder = ir.IRBuilder(block)
        xml_block = xml_blocks[block_key]
        populate_cfg(blocks, builder, xml_block, local_vars, functions, False)
        i += 1

    # Lifting main

    func_return = ir.VoidType()
    args = root.find("args")
    fnty = ir.FunctionType(func_return, [])
    name = root.find('name').text
    address = root.find('address').text
    ir_main = ir.Function(module, fnty, name)
    functions[name] = ir_main
    entry_block = ir_main.append_basic_block("entry")
    blocks = {}
    xml_blocks = {}
    for xml_block in root.find("block_graph").findall("block"):
        label = format_label(xml_block.find("label").find("address").text)
        block = ir_main.append_basic_block(label)
        blocks[label] = block
        xml_blocks[label] = xml_block
    builder = ir.IRBuilder(entry_block)
    locals_element = root.find("locals")
    local_vars = {}
    for local in locals_element.findall("var"):
        size = int(local.find("size").text) * 8
        name = local.find("name").text
        local_vars[name] = builder.alloca(ir.IntType(size), name=name)
    builder.branch(list(blocks.values())[0])
    i = 1
    for block_key in list(blocks.keys()):
        block = blocks[block_key]
        builder = ir.IRBuilder(block)
        xml_block = xml_blocks[block_key]
        populate_cfg(blocks, builder, xml_block, local_vars, functions, True)
        i += 1

    module_ref = llvm.parse_assembly(str(module))
    module_bc = llvm.parse_bitcode(module_ref.as_bitcode())
    module_bc.verify()
    print(module)


def populate_cfg(blocks, builder, block, local_vars, functions, is_void):
    branched = False
    for instruction in block.find("ops").findall("op"):
        opname = instruction.find("opname").text
        if opname == "CALL":
            inputs = instruction.find("inputs").findall("input")
            call_target = inputs[0].find("name").text
            args = []
            for arg in inputs[1:]:
                args.append(ir.Constant(ir.IntType(64), arg.find("name").text))
            builder.call(functions[call_target], args)
        elif opname == "RETURN":
            inputs = instruction.find("inputs").findall("input")
            val = inputs[1].find("name").text
            return_val = temps[val]
            if is_void:
                builder.ret_void()
            else:
                builder.ret(return_val)
            branched = True
        elif opname == "COPY":
            target = instruction.find("output")
            input_value = instruction.find("inputs").find("input")
            if input_value.find("name").text == "0":
                if target.find("name").text in list(local_vars.keys()):
                    builder.store(ir.Constant(ir.IntType(64), 0), local_vars[target.find("name").text])
                else:
                    temps[target.find("name").text] = ir.Constant(ir.IntType(64), 0)
            else:
                val = builder.load(local_vars[input_value.find("name").text])
                tmp = builder.trunc(val, ir.IntType(32))
                temps[target.find("name").text] = tmp
        elif opname == "SUBPIECE":
            inputs = instruction.find("inputs").findall("input")
            target = instruction.find("output")
            target_size = target.find("size").text
            if inputs[1].find("name").text == '0':
                result = builder.trunc(local_vars[inputs[0].find("name").text], ir.IntType(int(target_size) * 8))
                if target.find("name").text in local_vars:
                    builder.store(result, local_vars[target.find("name").text])
                else:
                    temps[target.find("name").text] = result
        elif opname == "BRANCH":
            target = instruction.find("inputs").find("input").find("name").text
            builder.branch(blocks[format_label(target)])
            branched = True
        elif opname == "CBRANCH":
            inputs = instruction.find("inputs").findall("input")
            true_branch = format_label(inputs[0].find("name").text)
            condition = temps[inputs[1].find("name").text]
            for branch in block.find("out_branches").findall("branch_target"):
                if branch.text == true_branch:
                    pass
                else:
                    false_branch = branch.text
            builder.cbranch(condition, blocks[true_branch], blocks[false_branch])
            branched = True
        elif opname == "INT_SLESS":
            inputs = instruction.find("inputs").findall("input")
            target = instruction.find("output")
            if "unique" in target.find("name").text:
                lhs = ir.Constant(ir.IntType(32), 0)
                rhs = builder.load(local_vars[inputs[1].find("name").text])
                temps[target.find("name").text] = builder.icmp_signed('<', lhs, rhs)
        elif opname == "INT_ADD":
            inputs = instruction.find("inputs").findall("input")
            target = instruction.find("output")
            args = []
            for input_value in inputs:
                if input_value.find("name").text in list(local_vars.keys()):
                    if input_value.find("name").text == "var_4h":
                        val = builder.load(local_vars[input_value.find("name").text])
                        args.append(builder.trunc(val, ir.IntType(32)))
                    else:
                        args.append(builder.load(local_vars[input_value.find("name").text]))
                elif input_value.find("name").text in list(temps.keys()):
                    args.append(temps[input_value.find("name").text])
                else:
                    args.append(ir.Constant(ir.IntType(32), int(input_value.find("name").text)))
            lhs, rhs = args
            result = builder.add(lhs, rhs)
            if target.find("name").text == "var_4h":
                temp = builder.zext(result, ir.IntType(64))
                builder.store(temp, local_vars[target.find("name").text])
            else:
                builder.store(result, local_vars[target.find("name").text])

    if not branched:
        builder.branch(blocks[block.find("out_branches").find("branch_target").text])


def format_label(label):
    if label[:2] == '0x':
        label = label[2:]
    new_label = '0x' + label.zfill(8)
    return new_label


def build_cfg(function, ir_func):
    builders, blocks = {}, {}
    instructions = function.find("instructions")
    if instructions:
        block = ir_func.append_basic_block("entry")
        blocks["entry"] = block
        builders["entry"] = ir.IRBuilder(block)
        for instruction in instructions:
            address = instruction.find("address").text
            block = ir_func.append_basic_block(address)
            blocks[address] = block
            builders[address] = ir.IRBuilder(block)
    return builders, blocks


def fetch_input_varnode(builder, name):
    var_type = name.get("storage")
    var_size = int(name.get("size")) * 8
    if var_type == "register":
        return builder.load(registers[name.text])
    elif var_type == "unique":
        if name.text not in list(uniques.keys()):
            raise Exception("Temporary variable referenced before defined")
        return uniques[name.text]
    elif var_type == "constant":
        var = ir.Constant(ir.IntType(var_size), int(name.text, 0))
        return var
    elif var_type == "memory":
        return memory[name.text]


def update_output(builder, name, output):
    var_type = name.get("storage")
    if var_type == "register":
        reg = registers[name.text]
        if reg.type != output.type.as_pointer():
            reg = builder.bitcast(reg, output.type.as_pointer())
        builder.store(output, reg)
    elif var_type == "unique":
        uniques[name.text] = output


def fetch_output_varnode(name):
    var_type = name.get("storage")
    if var_type == "register":
        return registers[name.text]
    elif var_type == "unique":
        if name.text not in uniques:
            uniques[name.text] = None
        return uniques[name.text]


def int_check_inputs(builder, lhs, rhs, target):
    if lhs.type != target:
        if lhs.type.is_pointer:
            lhs2 = lhs
            lhs = builder.ptrtoint(lhs, target)
            if lhs2 == rhs:
                rhs = lhs
    if rhs.type != target and lhs != rhs:
        if rhs.type.is_pointer:
            rhs = builder.ptrtoint(rhs, target)
    return lhs, rhs


def check_shift_inputs(builder, lhs, rhs, target):
    if lhs.type != target:
        if lhs.type.is_pointer:
            lhs = builder.ptrtoint(lhs, target)
        else:
            lhs = builder.zext(lhs, target)
    if rhs.type != target:
        if rhs.type.is_pointer:
            rhs = builder.ptrtoint(rhs, target)
        else:
            rhs = builder.zext(rhs, target)

    return lhs, rhs


def int_comparison_check_inputs(builder, lhs, rhs):
    # For integer comparison operations. We assume rhs is the correct type.
    if lhs.type.is_pointer:
        lhs = builder.ptrtoint(lhs, rhs.type)
    return lhs, rhs


if __name__ == "__main__":
    main()
