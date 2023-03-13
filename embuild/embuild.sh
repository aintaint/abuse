#!/bin/bash
source ../emsdk/emsdk_env.sh

rm -r obj
mkdir obj

SRCDIR="../abuse-0.9.1/src/"

em++ -c ../abuse-0.9.1/src/wasmgame.cpp -o obj/wasmgame.o -s USE_SDL=2 -DHAVE_UNISTD_H -DPACKAGE_VERSION=\"0.9.2em\" -I../fetch/src/ -DPACKAGE_NAME=\"wasmabuse\"

em++ -c ../abuse-0.9.1/src/ability.cpp -o obj/ability.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/endgame.cpp -o obj/endgame.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/netcfg.cpp -o obj/netcfg.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/ant.cpp -o obj/ant.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/extend.cpp -o obj/extend.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/nfclient.cpp -o obj/nfclient.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/automap.cpp -o obj/automap.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/fnt6x13.cpp -o obj/fnt6x13.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/objects.cpp -o obj/objects.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/cache.cpp -o obj/cache.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/particle.cpp -o obj/particle.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/chars.cpp -o obj/chars.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/gamma.cpp -o obj/gamma.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/points.cpp -o obj/points.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/chat.cpp -o obj/chat.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/gui.cpp -o obj/gui.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/profile.cpp -o obj/profile.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/clisp.cpp -o obj/clisp.o -s USE_SDL=2 -DHAVE_UNISTD_H
em++ -c ../abuse-0.9.1/src/help.cpp -o obj/help.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/property.cpp -o obj/property.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/collide.cpp -o obj/collide.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/innet.cpp -o obj/innet.o -s USE_SDL=2 -DHAVE_UNISTD_H
em++ -c ../abuse-0.9.1/src/sensor.cpp -o obj/sensor.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/compiled.cpp -o obj/compiled.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/intsect.cpp -o obj/intsect.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/seq.cpp -o obj/seq.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/configuration.cpp -o obj/configuration.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/items.cpp -o obj/items.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/smallfnt.cpp -o obj/smallfnt.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/console.cpp -o obj/console.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/lcache.cpp -o obj/lcache.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/specache.cpp -o obj/specache.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/cop.cpp -o obj/cop.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/level.cpp -o obj/level.o -s USE_SDL=2 -DHAVE_UNISTD_H
em++ -c ../abuse-0.9.1/src/statbar.cpp -o obj/statbar.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/crc.cpp -o obj/crc.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/light.cpp -o obj/light.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/transp.cpp -o obj/transp.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/demo.cpp -o obj/demo.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/loader2.cpp -o obj/loader2.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/view.cpp -o obj/view.o -s USE_SDL=2 -DHAVE_UNISTD_H
em++ -c ../abuse-0.9.1/src/dev.cpp -o obj/dev.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/loadgame.cpp -o obj/loadgame.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/devsel.cpp -o obj/devsel.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/menu.cpp -o obj/menu.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/director.cpp -o obj/director.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/morpher.cpp -o obj/morpher.o -s USE_SDL=2

# maybe replace with lisp now
em++ -c ../abuse-0.9.1/src/ui/volumewindow.cpp -o obj/volumewindow.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/lol/matrix.cpp -o obj/matrix.o
em++ -c ../abuse-0.9.1/src/lol/timer.cpp -o obj/timer.o -s USE_SDL=2

# maybe replace with scheme
em++ -c ../abuse-0.9.1/src/lisp/lisp.cpp -o obj/lisp.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/lisp/lisp_opt.cpp -o obj/lisp_opt.o
em++ -c ../abuse-0.9.1/src/lisp/lisp_gc.cpp -o obj/lisp_gc.o
em++ -c ../abuse-0.9.1/src/lisp/trig.cpp -o obj/trig.o

# maybe replace with hose
em++ -c ../abuse-0.9.1/src/sdlport/errorui.cpp -o obj/errorui.o -s USE_SDL=2
#em++ -c ../abuse-0.9.1/src/sdlport/setup.cpp -o obj/setup.o -s USE_SDL=2 -DPACKAGE_VERSION=\"0.9.2em\" -DPACKAGE_NAME=\"wasmabuse\" -DASSETDIR=\"/abuse/\"
em++ -c ../abuse-0.9.1/src/sdlport/event.cpp -o obj/event.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/sdlport/sound.cpp -o obj/sound.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/sdlport/hmi.cpp -o obj/hmi.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/sdlport/timing.cpp -o obj/timing.o -s USE_SDL=2 -DHAVE_SYS_TIME_H
em++ -c ../abuse-0.9.1/src/sdlport/jdir.cpp -o obj/jdir.o -s USE_SDL=2 -DHAVE_UNISTD_H
#em++ -c ../abuse-0.9.1/src/sdlport/video.cpp -o obj/video.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/sdlport/joystick.cpp -o obj/joystick.o -s USE_SDL=2


# maybe reimplement in scheme
em++ -c ../abuse-0.9.1/src/imlib/dprint.cpp -o obj/dprint.o
em++ -c ../abuse-0.9.1/src/imlib/linked.cpp -o obj/linked.o
em++ -c ../abuse-0.9.1/src/imlib/event.cpp -o obj/event_imlib.o
em++ -c ../abuse-0.9.1/src/imlib/palette.cpp -o obj/palette.o
em++ -c ../abuse-0.9.1/src/imlib/filesel.cpp -o obj/filesel.o -DHAVE_UNISTD_H
em++ -c ../abuse-0.9.1/src/imlib/pcxread.cpp -o obj/pcxread.o
em++ -c ../abuse-0.9.1/src/imlib/filter.cpp -o obj/filter.o
em++ -c ../abuse-0.9.1/src/imlib/pmenu.cpp -o obj/pmenu.o
em++ -c ../abuse-0.9.1/src/imlib/fonts.cpp -o obj/fonts.o
em++ -c ../abuse-0.9.1/src/imlib/scroller.cpp -o obj/scroller.o
em++ -c ../abuse-0.9.1/src/imlib/guistat.cpp -o obj/guistat.o
em++ -c ../abuse-0.9.1/src/imlib/specs.cpp -o obj/specs.o -DHAVE_UNISTD_H
em++ -c ../abuse-0.9.1/src/imlib/image.cpp -o obj/image.o
em++ -c ../abuse-0.9.1/src/imlib/sprite.cpp -o obj/sprite.o
em++ -c ../abuse-0.9.1/src/imlib/include.cpp -o obj/include.o
em++ -c ../abuse-0.9.1/src/imlib/status.cpp -o obj/status.o
em++ -c ../abuse-0.9.1/src/imlib/input.cpp -o obj/input.o
em++ -c ../abuse-0.9.1/src/imlib/supmorph.cpp -o obj/supmorph.o
em++ -c ../abuse-0.9.1/src/imlib/jrand.cpp -o obj/jrand.o
em++ -c ../abuse-0.9.1/src/imlib/tools.cpp -o obj/tools.o
em++ -c ../abuse-0.9.1/src/imlib/jwindow.cpp -o obj/jwindow.o
em++ -c ../abuse-0.9.1/src/imlib/transimage.cpp -o obj/transimage.o
em++ -c ../abuse-0.9.1/src/imlib/keys.cpp -o obj/keys.o
em++ -c ../abuse-0.9.1/src/imlib/video.cpp -o obj/video.o


# maybe stub this out
em++ -c ../abuse-0.9.1/src/net/fileman.cpp -o obj/fileman.o
em++ -c ../abuse-0.9.1/src/net/gserver.cpp -o obj/gserver.o -s USE_SDL=2
em++ -c ../abuse-0.9.1/src/net/tcpip.cpp -o obj/tcpip.o
em++ -c ../abuse-0.9.1/src/net/gclient.cpp -o obj/gclient.o
em++ -c ../abuse-0.9.1/src/net/sock.cpp -o obj/sock.o


# minitar
emcc -c ../fetch/src/blocksort.c -o obj/blocksort.o
emcc -c ../fetch/src/compress.c -o obj/compress.o
emcc -c ../fetch/src/decompress.c -o obj/decompress.o
emcc -c ../fetch/src/randtable.c -o obj/randtable.o
emcc -c ../fetch/src/untar.c -o obj/untar.o
emcc -c ../fetch/src/bzlib.c -o obj/bzlib.o
emcc -c ../fetch/src/crctable.c -o obj/crctable.o
emcc -c ../fetch/src/huffman.c -o obj/huffman.o
emcc -c ../fetch/src/tarball.c -o obj/tarball.o


em++ -o abuse.html obj/*.o -s FETCH=1 -s USE_ZLIB=1 -s USE_SDL=2 -s USE_SDL_MIXER=2 -s ALLOW_MEMORY_GROWTH -lidbfs.js

rm -r srv/
mkdir srv/
mv -f abuse.html srv/
mv -f abuse.js srv/
mv -f abuse.wasm srv/

npx http-server ./srv/

