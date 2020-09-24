# GHIDRALL

This is an adaption of the r2ghidra-dec project. It leverages the ghidra decompiler's internal datastructures to emit P-code at a higher level than low/high p-code.

## Installing

Requires r2.

Same instructions from r2ghidra-dec.

First, make sure the submodule contained within this repository is fetched and up to date:

```
git submodule init
git submodule update
```

Then, the radare2 plugin can be built and installed as follows:

```
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=~/.local ..
make
make install
```

## Usage

Simply run the ghidrall.py script with your target binary as the input.

## Running tests

cd ghidrall/tests
mkdir build; cd build
cmake ..
cmake --build .
cd ../..
python run-tests.py

This will compile all the test programs that are pre-instrumented with analysis, decompile, lift and verify them all for verification.

## Docker

The following docker container incorporates Seahorn for testing and maintains older versions of modules for compatibility's sake:

https://hub.docker.com/repository/docker/toordeforce/ghidralltester
