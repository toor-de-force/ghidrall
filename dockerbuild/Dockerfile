FROM seahorn/seahorn-llvm10:nightly
MAINTAINER Tejvinder Toor tejvinder.singh.toor@gmail.com

USER root

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install build-essential -y
RUN apt-get install flex bison -y
RUN apt-get install pkg-config -y
RUN git clone https://github.com/rizinorg/rizin.git
RUN pip3 install meson

WORKDIR /home/usea/rizin

RUN git fetch
RUN git checkout 0.1.0
RUN git submodule init
RUN git submodule update
RUN meson  --prefix=/usr build 
RUN ninja -C build 
RUN sudo ninja -C build install
WORKDIR /home/usea/

RUN git clone https://github.com/toor-de-force/rz-ghidra.git

WORKDIR /home/usea/rz-ghidra

RUN git submodule init
RUN git submodule update
RUN mkdir build
WORKDIR /home/usea/rz-ghidra/build
RUN cmake -DCMAKE_INSTALL_PREFIX=~/.local ..
RUN make
RUN make install

WORKDIR /home/usea

RUN git clone https://github.com/toor-de-force/Ghidrall.git

WORKDIR /home/usea/Ghidrall

RUN git fetch
RUN git checkout new_frontend

RUN pip3 install rzpipe
RUN pip3 install lxml
RUN pip3 install pydot
RUN LLVM_CONFIG=/usr/lib/llvm-10/bin/llvm-config pip3 install llvmlite

RUN ln -s /usr/bin/clang-10 /usr/bin/clang
RUN ln -s /usr/bin/clang++-10 /usr/bin/clang++
RUN ln -s /usr/bin/llvm-ar-10 /usr/bin/llvm-ar
RUN ln -s /usr/bin/llvm-link-10 /usr/bin/llvm-link
RUN pip3 install docker
