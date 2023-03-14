#!/bin/bash
source ../../emsdk/emsdk_env.sh

rm -r src
rm -r CMakeFiles
rm -r data
rm Makefile
rm *.cmake
rm config.h
rm CMakeCache.txt

emcmake cmake ..
emmake make

mkdir srv
cp src/wasmabuse.* srv/

npx http-server ./srv/
