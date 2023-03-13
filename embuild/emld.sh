#!/bin/bash
source ../emsdk/emsdk_env.sh


em++ -c ../abuse-0.9.1/src/wasmgame.cpp -o obj/wasmgame.o -s USE_SDL=2 -DHAVE_UNISTD_H -I../fetch/src/
em++ -c ../abuse-0.9.1/src/loader2.cpp -o obj/loader2.o -s USE_SDL=2

em++ -o abuse.html obj/*.o -s FETCH=1 -s USE_ZLIB=1 -s USE_SDL=2 -s USE_SDL_MIXER=2 -s ALLOW_MEMORY_GROWTH -lidbfs.js

mv -f abuse.html ./srv/
mv -f abuse.js ./srv/
mv -f abuse.wasm ./srv/

npx http-server ./srv/

