" Search through files in directory
map <leader>p <Esc><Esc>:Files<CR>
" Search through lines in buffer
noremap <leader>f <Esc><Esc>:BLines<CR>
" Search through git tracked files. (handy since it ignores build files etc)
noremap <leader>g <Esc><Esc>:GFiles<CR>

let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
