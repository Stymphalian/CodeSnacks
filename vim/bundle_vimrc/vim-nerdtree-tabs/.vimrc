nnoremap <leader>do :NERDTreeTabsToggle<CR>
"nnoremap <leader>do :NERDTree .<CR>
let g:nerdtree_tabs_autoclose = 1
let g:nerdtree_tabs_smart_startup_focus = 2
if has('gui_running')
  autocmd GUIEnter * wincmd p
endif
