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
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_map=''             "Use leader instead of the default mapping
let g:ctrlp_regexp=1           "by default have ctrlp serach by regex
let g:ctrlp_use_caching=1      "disable any caching for ctrlp,
let g:ctrlp_follow_symlinks=1  "follow symlinks but ignore loops

if executable('ag')
  " use ag instead of grep
  set grepprg=ag\ --nogroup\ --nocolor
  " USe ag in ctrlp for listing files. super fast and respects .gitignore
  let g:ctrlp_user_command = '/usr/bin/ag %s -i --nocolor --nogroup --hidden 
    \ --ignore .git
    \ --ignore .svn
    \ --ignore .hg
    \ --ignore .DS_store
    \ --ignore "**/*.pyc"
    \ -g ""'

endif
        
" Easy bindings for its various modes
nmap <leader>p :CtrlP<cr>
nmap <leader>p1 :CtrlPBuffer<cr>
nmap <leader>p2 :CtrlPMixed<cr>
nmap <leader>p3 :CtrlPMRU<cr>
