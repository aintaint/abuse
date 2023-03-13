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

Emscripten provides some mechanisms for file system access and MEMFS isn't
quite adequate for the entire library of game assets. The Abuse runtime
incorporates the idea of streaming the game assets for network play, the
obvious thing to do, but it's in the wrong paradigm.

Emscripten also provides zlib, but there's no structured archive format
in the ports library. (Maybe some innovation with serializing a file system
to a browser database format is better than tar, but I found a good tar)

https://github.com/bucanero/libtinytar

The browser provides a 32bit virtual machine. Contemporary to this code,
but a small implementation detail that may be breaking.

Emscripten's C standard library is based on musl, and not GNU libc, another
small implementation detail that could potentially be breaking.

Running Emscripten with cmake for this size of project isn't practical for
debugging. Replacing the build system with shell scripts, maybe ninja later.

The project directory structure implies a historical intent to refactor the
code that stalled. The Common Lisp interpreter is very compact and the work of
an expert programmer, but the style also reflects limitations of the compilers
around, and the standard, when it was written. It's a shame to throw out but
probably also a headache to rewrite in-situ.

I'm curious about whether another interpreter could be dropped in as a
replacement, but this is mostly to understand and simplify the interface
between the game engine and the interpreter. The idea of a refactor in the tree
also suggests intentions of C++ code replaced with lisp.

These headers are a mess.


