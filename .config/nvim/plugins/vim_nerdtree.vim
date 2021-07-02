" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR><CR>
" nnoremap <C-F> :NERDTreeFind<CR>

let NERDTreeQuitOnOpen=1
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=0
let g:indentLine_char = '|'
let g:NERDTreeWinSize=35
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

set ambiwidth=double
autocmd FileType nerdtree setlocal nolist

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
