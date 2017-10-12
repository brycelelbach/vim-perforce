" Perforce filetype detection
"
" Maintainer: Bryce Lelbach <brycelelbach@gmail.com>
"
" Distributed under the Boost Software License v1.0 www.boost.org/LICENSE_1_0.txt

if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

au! BufNewFile,BufRead * if getline(1) =~ '^# A Perforce' | setf perforce | endif

augroup END

