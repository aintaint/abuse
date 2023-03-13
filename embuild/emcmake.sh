#!/bin/bash
source ../emsdk/emsdk_env.sh

rm -r src
rm -r CMakeFiles
rm -r data
rm Makefile
rm *.cmake
rm config.h
rm CMakeCache.txt

emcmake cmake ../abuse-0.9.1/
emmake make


mkdir srv
cp src/wasmabuse.* srv/

#mkdir obj

npx http-server ./srv/
