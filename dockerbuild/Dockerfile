FROM seahorn/seahorn-llvm10:nightly
MAINTAINER Tejvinder Toor tejvinder.singh.toor@gmail.com

USER root

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install build-essential -y
RUN apt-get install flex bison -y
RUN apt-get install pkg-config -y
RUN pip3 install meson

RUN pip3 install rzpipe
RUN pip3 install lxml
RUN pip3 install pydot
RUN LLVM_CONFIG=/usr/lib/llvm-10/bin/llvm-config pip3 install llvmlite

RUN ln -s /usr/bin/clang-10 /usr/bin/clang
RUN ln -s /usr/bin/clang++-10 /usr/bin/clang++
RUN ln -s /usr/bin/llvm-ar-10 /usr/bin/llvm-ar
RUN ln -s /usr/bin/llvm-link-10 /usr/bin/llvm-link
RUN pip3 install docker

## install rizin, version 0.1.0
USER usea
WORKDIR /home/usea
RUN git clone https://github.com/rizinorg/rizin.git
WORKDIR /home/usea/rizin
RUN git fetch
RUN git checkout 0.1.0
RUN git submodule init
RUN git submodule update
RUN meson  --prefix=/usr build 
RUN ninja -C build 

# run install as root
USER root
RUN ninja -C build install

# custom version of ghidra decompiler
USER usea
WORKDIR /home/usea/
RUN git clone https://github.com/toor-de-force/rz-ghidra.git
WORKDIR /home/usea/rz-ghidra
RUN git submodule init
RUN git submodule update
RUN mkdir build
WORKDIR /home/usea/rz-ghidra/build
RUN cmake -DCMAKE_INSTALL_PREFIX=~/.local .. -GNinja
RUN ninja install

# ghidrall project
WORKDIR /home/usea
RUN git clone https://github.com/toor-de-force/Ghidrall.git
WORKDIR /home/usea/Ghidrall
RUN git fetch
RUN git checkout new_frontend

USER usea

