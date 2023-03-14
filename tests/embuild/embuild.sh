#!/bin/bash
source ../../emsdk/emsdk_env.sh

rm -r obj
mkdir obj

em++ -c ../src/fetch.cpp -o obj/fetch.o -I../src/
emcc -c ../src/blocksort.c -o obj/blocksort.o -I ../src/
emcc -c ../src/compress.c -o obj/compress.o -I ../src/
emcc -c ../src/decompress.c -o obj/decompress.o -I ../src/
emcc -c ../src/randtable.c -o obj/randtable.o -I ../src/
emcc -c ../src/untar.c -o obj/untar.o -I ../src/
emcc -c ../src/bzlib.c -o obj/bzlib.o -I ../src/
emcc -c ../src/crctable.c -o obj/crctable.o -I ../src/
emcc -c ../src/huffman.c -o obj/huffman.o -I ../src/
emcc -c ../src/tarball.c -o obj/tarball.o -I ../src/

echo "link ******"

em++ -o fetch.html  obj/fetch.o obj/blocksort.o obj/bzlib.o obj/compress.o obj/crctable.o obj/decompress.o obj/huffman.o obj/randtable.o obj/tarball.o obj/untar.o -s FETCH=1 -s USE_ZLIB=1 -s ALLOW_MEMORY_GROWTH -lidbfs.js

mv -f fetch.html ./srv/
mv -f fetch.js ./srv/
mv -f fetch.wasm ./srv/

npx http-server ./srv/
