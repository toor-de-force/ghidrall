#!/bin/bash
# Quick script to reset and run the docker container

docker build -t "ghidralltester:Dockerfile" ../dockerbuild
docker run --name ghidralltest -v /tmp/results:/tmp/results -it --rm ghidralltester:Dockerfile
