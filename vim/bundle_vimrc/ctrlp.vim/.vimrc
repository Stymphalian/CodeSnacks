"" CtrlP _vimrc
""
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'ra'

" Use a leader instead of the actual named binding
let g:ctrlp_map = ''
let g:ctrlp_regexp = 1
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>po :CtrlPBuffer<cr>
nmap <leader>pi :CtrlPMixed<cr>
nmap <leader>pu :CtrlPMRU<cr>
