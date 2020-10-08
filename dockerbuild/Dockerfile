FROM seahorn/seahorn-llvm10:nightly
MAINTAINER Tejvinder Toor tejvinder.singh.toor@gmail.com

USER root

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install build-essential -y
RUN apt-get install flex bison -y
RUN git clone https://github.com/radareorg/radare2.git
RUN radare2/sys/install.sh

RUN git clone https://github.com/toor-de-force/Ghidrall.git

WORKDIR /home/usea/Ghidrall

RUN git submodule init
RUN git submodule update
RUN mkdir build

WORKDIR /home/usea/Ghidrall/build 

RUN cmake -DCMAKE_INSTALL_PREFIX=~/.local ..                         
RUN make install

RUN pip3 install r2pipe
RUN LLVM_CONFIG=/usr/lib/llvm-10/bin/llvm-config pip3 install llvmlite

WORKDIR /home/usea/Ghidrall/ghidrall