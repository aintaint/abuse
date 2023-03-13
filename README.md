README
============

This wasm build is running but not yet in a playable state.

You can run Abuse under dosbox on the web.


This fork is in preparation to check in some incremental changes to the SDL2
port, in order to hack on this and retarget at Emscripten builds.

Emscripten provides SDL2 support but this is all obviously the wrong way to
target a Common Lisp game engine at the web, basically from top to bottom
wrong. So the intention is incrementally back out all of the changes until
it's spiritually correct.

This is an interesting game engine.

My aim is to retarget and refactor the engine. Be careful about pulling
changes back, I'm not doing maintenance, primarily. I'm primarily making
breaking changes.

----

First steps involved testing the cmake build system and getting the project
to compile as-is, and it was convenient that SDL is provided as part of the
Emscripten ports package, and that the emsdk provides a wrapper for cmake.

https://emscripten.org/

After installing the emsdk, it's nearly as simple as:

    mkdir embuild
    cd embuild
    source [path to emsdk shell script]
    emcmake cmake ..
    emmake make

clang didn't exist when this code was written, and the best of it uses a
very old style of C++. Compiling to wasm from C++ and SDL in order to run
this on a modern interpreter that's, almost, a scheme dialect with a display
system, is pretty perverse. This seems like an avenue to explore some
alternative approaches.
