let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/dev/lab/rust/play
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +340 src/btree/redblack_btree/tests.rs
badd +7667 term://.//30125:/usr/bin/zsh
badd +459 src/btree/btree_trait/mod.rs
badd +730 src/btree/redblack_btree/mod.rs
badd +643 src/btree/simple_btree/tests.rs
badd +1 src/btree/redblack_btree
argglobal
silent! argdel *
edit src/btree/simple_btree/tests.rs
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 156 + 156) / 312)
exe 'vert 2resize ' . ((&columns * 155 + 156) / 312)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 664 - ((71 * winheight(0) + 43) / 87)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
664
normal! 036|
lcd ~/dev/lab/rust/play
wincmd w
argglobal
if bufexists('term://.//30125:/usr/bin/zsh') | buffer term://.//30125:/usr/bin/zsh | else | edit term://.//30125:/usr/bin/zsh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 8278 - ((71 * winheight(0) + 43) / 87)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8278
normal! 06|
lcd ~/dev/lab/rust/play
wincmd w
exe 'vert 1resize ' . ((&columns * 156 + 156) / 312)
exe 'vert 2resize ' . ((&columns * 155 + 156) / 312)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
