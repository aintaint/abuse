/*
 *  Abuse - dark 2D side-scrolling platform game
 *  Copyright (c) 1995 Crack dot Com
 *  Copyright (c) 2005-2011 Sam Hocevar <sam@hocevar.net>
 *
 *  This software was released into the Public Domain. As with most public
 *  domain software, no warranty is made or implied by Crack dot Com, by
 *  Jonathan Clark, or by Sam Hocevar.
 */

#ifndef __LCACHE_HPP_
#define __LCACHE_HPP_
#include "lisp/lisp.h"

// return number of bytes to save this block of code
size_t block_size(LObject *level);
void write_level(bFILE *fp, LObject *level);
LObject *load_block(bFILE *fp);

#endif

