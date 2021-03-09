# FRESH INSTRUCTIONS, PLEASE FOLLOW THESE.

Please use branch `new_frontend`. This will become the master branch in the near future.

## INSTALLING

For a one stop shop, here is a new dockerhub image to pull:
`docker pull toordeforce/ghidrall_2021:latest && docker run -it toordeforce/ghidrall_2021:latest`

To build from the dockerfile run the following:
1. `cd dockerbuild`
2. `docker build -t foo . --no-cache && docker run -it foo` Be aware, running `build` with `--no-cache` continuously will rewrite memory. Use `docker prune` to clean things up if you make too many images.

## RUNNING

From either installation method:

1. Build the test binaries with `python3 generate_tests.py`. This compiles all binaries at different optimization levels and stores the output LLVM IR files from compilation time for comparison.
2. Run Ghidrall against these binaries with `python3 run_ghidrall_for_tests.py`
3. Run the SeaHorn tests with `python3 run_seahorn_for_tests.py`. If you are **NOT** within a docker, use tag `--docker` to run the tests with a SeaHorn docker container. If you are in the docker already, Seahorn is already baked in and you can run without the tag.

For a single example:
1. `clang++ -o bound_loop_with_var.o -g -O0 -fno-inline-functions tests/src/bound_loop_with_var.cpp -flto -Wl,-plugin-opt,save-temps`
2. `python3 ghidrall.py -f main bound_loop_with_var.o -l single_struct -o bound_loop_with_var.ll`
3. `sea yama -y ghidrall.yaml bpf bound_loop_with_var.ll`

SeaHorn will say no assertions found - this is a good thing! The LLVM optimizer found it was trivial to reach that goal, so it didn't bring it to the solver stage.
