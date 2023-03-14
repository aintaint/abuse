#!/bin/bash
source ../../emsdk/emsdk_env.sh

rm -r obj
mkdir obj

em++ -c ../src/wasmgame.cpp -o obj/wasmgame.o -s USE_SDL=2 -s USE_SDL_MIXER=2 -DHAVE_UNISTD_H -DPACKAGE_VERSION=\"0.9.2em\" -I../libtinytar/include/ -DPACKAGE_NAME=\"wasmabuse\"

em++ -c ../src/ability.cpp -o obj/ability.o -s USE_SDL=2
em++ -c ../src/endgame.cpp -o obj/endgame.o -s USE_SDL=2
em++ -c ../src/netcfg.cpp -o obj/netcfg.o -s USE_SDL=2
em++ -c ../src/ant.cpp -o obj/ant.o -s USE_SDL=2
em++ -c ../src/extend.cpp -o obj/extend.o -s USE_SDL=2
em++ -c ../src/nfclient.cpp -o obj/nfclient.o -s USE_SDL=2
em++ -c ../src/automap.cpp -o obj/automap.o -s USE_SDL=2
em++ -c ../src/fnt6x13.cpp -o obj/fnt6x13.o -s USE_SDL=2
em++ -c ../src/objects.cpp -o obj/objects.o -s USE_SDL=2
em++ -c ../src/cache.cpp -o obj/cache.o -s USE_SDL=2
em++ -c ../src/particle.cpp -o obj/particle.o -s USE_SDL=2
em++ -c ../src/chars.cpp -o obj/chars.o -s USE_SDL=2
em++ -c ../src/gamma.cpp -o obj/gamma.o -s USE_SDL=2
em++ -c ../src/points.cpp -o obj/points.o -s USE_SDL=2
em++ -c ../src/chat.cpp -o obj/chat.o -s USE_SDL=2
em++ -c ../src/gui.cpp -o obj/gui.o -s USE_SDL=2
em++ -c ../src/profile.cpp -o obj/profile.o -s USE_SDL=2
em++ -c ../src/clisp.cpp -o obj/clisp.o -s USE_SDL=2 -DHAVE_UNISTD_H
em++ -c ../src/help.cpp -o obj/help.o -s USE_SDL=2
em++ -c ../src/property.cpp -o obj/property.o -s USE_SDL=2
em++ -c ../src/collide.cpp -o obj/collide.o -s USE_SDL=2
em++ -c ../src/innet.cpp -o obj/innet.o -s USE_SDL=2 -DHAVE_UNISTD_H
em++ -c ../src/sensor.cpp -o obj/sensor.o -s USE_SDL=2
em++ -c ../src/compiled.cpp -o obj/compiled.o -s USE_SDL=2
em++ -c ../src/intsect.cpp -o obj/intsect.o -s USE_SDL=2
em++ -c ../src/seq.cpp -o obj/seq.o -s USE_SDL=2
em++ -c ../src/configuration.cpp -o obj/configuration.o -s USE_SDL=2
em++ -c ../src/items.cpp -o obj/items.o -s USE_SDL=2
em++ -c ../src/smallfnt.cpp -o obj/smallfnt.o -s USE_SDL=2
em++ -c ../src/console.cpp -o obj/console.o -s USE_SDL=2
em++ -c ../src/lcache.cpp -o obj/lcache.o -s USE_SDL=2
em++ -c ../src/specache.cpp -o obj/specache.o -s USE_SDL=2
em++ -c ../src/cop.cpp -o obj/cop.o -s USE_SDL=2
em++ -c ../src/level.cpp -o obj/level.o -s USE_SDL=2 -DHAVE_UNISTD_H
em++ -c ../src/statbar.cpp -o obj/statbar.o -s USE_SDL=2
em++ -c ../src/crc.cpp -o obj/crc.o -s USE_SDL=2
em++ -c ../src/light.cpp -o obj/light.o -s USE_SDL=2
em++ -c ../src/transp.cpp -o obj/transp.o -s USE_SDL=2
em++ -c ../src/demo.cpp -o obj/demo.o -s USE_SDL=2
em++ -c ../src/loader2.cpp -o obj/loader2.o -s USE_SDL=2
em++ -c ../src/view.cpp -o obj/view.o -s USE_SDL=2 -DHAVE_UNISTD_H
em++ -c ../src/dev.cpp -o obj/dev.o -s USE_SDL=2
em++ -c ../src/loadgame.cpp -o obj/loadgame.o -s USE_SDL=2
em++ -c ../src/devsel.cpp -o obj/devsel.o -s USE_SDL=2
em++ -c ../src/menu.cpp -o obj/menu.o -s USE_SDL=2
em++ -c ../src/director.cpp -o obj/director.o -s USE_SDL=2
em++ -c ../src/morpher.cpp -o obj/morpher.o -s USE_SDL=2

# maybe replace with lisp now
em++ -c ../src/ui/volumewindow.cpp -o obj/volumewindow.o -s USE_SDL=2
em++ -c ../src/lol/matrix.cpp -o obj/matrix.o
em++ -c ../src/lol/timer.cpp -o obj/timer.o -s USE_SDL=2

# maybe replace with scheme
em++ -c ../src/lisp/lisp.cpp -o obj/lisp.o -s USE_SDL=2
em++ -c ../src/lisp/lisp_opt.cpp -o obj/lisp_opt.o
em++ -c ../src/lisp/lisp_gc.cpp -o obj/lisp_gc.o
em++ -c ../src/lisp/trig.cpp -o obj/trig.o

# maybe replace with hose
em++ -c ../src/sdlport/errorui.cpp -o obj/errorui.o -s USE_SDL=2
#em++ -c ../src/sdlport/setup.cpp -o obj/setup.o -s USE_SDL=2 -DPACKAGE_VERSION=\"0.9.2em\" -DPACKAGE_NAME=\"wasmabuse\" -DASSETDIR=\"/abuse/\"
em++ -c ../src/sdlport/event.cpp -o obj/event.o -s USE_SDL=2
em++ -c ../src/sdlport/sound.cpp -o obj/sound.o -s USE_SDL=2
em++ -c ../src/sdlport/hmi.cpp -o obj/hmi.o -s USE_SDL=2
em++ -c ../src/sdlport/timing.cpp -o obj/timing.o -s USE_SDL=2 -DHAVE_SYS_TIME_H
em++ -c ../src/sdlport/jdir.cpp -o obj/jdir.o -s USE_SDL=2 -DHAVE_UNISTD_H
#em++ -c ../src/sdlport/video.cpp -o obj/video.o -s USE_SDL=2
em++ -c ../src/sdlport/joystick.cpp -o obj/joystick.o -s USE_SDL=2


# maybe reimplement in scheme
em++ -c ../src/imlib/dprint.cpp -o obj/dprint.o
em++ -c ../src/imlib/linked.cpp -o obj/linked.o
em++ -c ../src/imlib/event.cpp -o obj/event_imlib.o
em++ -c ../src/imlib/palette.cpp -o obj/palette.o
em++ -c ../src/imlib/filesel.cpp -o obj/filesel.o -DHAVE_UNISTD_H
em++ -c ../src/imlib/pcxread.cpp -o obj/pcxread.o
em++ -c ../src/imlib/filter.cpp -o obj/filter.o
em++ -c ../src/imlib/pmenu.cpp -o obj/pmenu.o
em++ -c ../src/imlib/fonts.cpp -o obj/fonts.o
em++ -c ../src/imlib/scroller.cpp -o obj/scroller.o
em++ -c ../src/imlib/guistat.cpp -o obj/guistat.o
em++ -c ../src/imlib/specs.cpp -o obj/specs.o -DHAVE_UNISTD_H
em++ -c ../src/imlib/image.cpp -o obj/image.o
em++ -c ../src/imlib/sprite.cpp -o obj/sprite.o
em++ -c ../src/imlib/include.cpp -o obj/include.o
em++ -c ../src/imlib/status.cpp -o obj/status.o
em++ -c ../src/imlib/input.cpp -o obj/input.o
em++ -c ../src/imlib/supmorph.cpp -o obj/supmorph.o
em++ -c ../src/imlib/jrand.cpp -o obj/jrand.o
em++ -c ../src/imlib/tools.cpp -o obj/tools.o
em++ -c ../src/imlib/jwindow.cpp -o obj/jwindow.o
em++ -c ../src/imlib/transimage.cpp -o obj/transimage.o
em++ -c ../src/imlib/keys.cpp -o obj/keys.o
em++ -c ../src/imlib/video.cpp -o obj/video.o


# maybe stub this out
em++ -c ../src/net/fileman.cpp -o obj/fileman.o
em++ -c ../src/net/gserver.cpp -o obj/gserver.o -s USE_SDL=2
em++ -c ../src/net/tcpip.cpp -o obj/tcpip.o
em++ -c ../src/net/gclient.cpp -o obj/gclient.o
em++ -c ../src/net/sock.cpp -o obj/sock.o


# minitar
emcc -c ../libtinytar/source/blocksort.c -o obj/blocksort.o -I../libtinytar/include/
emcc -c ../libtinytar/source/compress.c -o obj/compress.o -I../libtinytar/include/
emcc -c ../libtinytar/source/decompress.c -o obj/decompress.o -I../libtinytar/include/
emcc -c ../libtinytar/source/randtable.c -o obj/randtable.o -I../libtinytar/include/
emcc -c ../libtinytar/source/untar.c -o obj/untar.o -I../libtinytar/include/
emcc -c ../libtinytar/source/bzlib.c -o obj/bzlib.o -I../libtinytar/include/
emcc -c ../libtinytar/source/crctable.c -o obj/crctable.o -I../libtinytar/include/
emcc -c ../libtinytar/source/huffman.c -o obj/huffman.o -I../libtinytar/include/
emcc -c ../libtinytar/source/tarball.c -o obj/tarball.o -I../libtinytar/include/


em++ -o abuse.html obj/*.o -s FETCH=1 -s USE_ZLIB=1 -s USE_SDL=2 -s USE_SDL_MIXER=2 -s ALLOW_MEMORY_GROWTH -lidbfs.js

#rm -r srv/
#mkdir srv/
#mv -f abuse.html srv/
#mv -f abuse.js srv/
#mv -f abuse.wasm srv/

#npx http-server ./srv/

