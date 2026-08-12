"
" Kinderfeld's `~/.vimrc`:
"
" Copyright 2026 kinderfeld
"
" Redistribution and use in source and binary forms, with or without
" modification, are permitted provided that the following conditions are met:
"
" 1. Redistributions of source code must retain the above copyright notice,
" this list of conditions and the following disclaimer.
"
" 2. Redistributions in binary form must reproduce the above copyright notice,
" this list of conditions and the following disclaimer in the documentation
" and/or other materials provided with the distribution.
"
" THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS”
" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
" IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
" ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
" LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
" CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
" SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
" INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
" CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
" ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
" POSSIBILITY OF SUCH DAMAGE.

set exrc
set secure
set autoread
set wildmenu
set nocompatible
set clipboard=unnamedplus

set nowb
set nobackup
set noswapfile

set lbr
set ruler
set number
set textwidth=90
set colorcolumn=80

set hid
set cmdheight=1

try
    colorscheme lunaperche
    set background=dark
    catch
endtry

set ai
" set si
set wrap
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

filetype on
syntax enable
