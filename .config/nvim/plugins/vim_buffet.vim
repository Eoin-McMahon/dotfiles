nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader>q :Bw<CR>
noremap <Leader>Q :Bw!<CR>
noremap <C-t> :tabnew<CR>

let g:buffet_use_devicons=1
let g:buffet_powerline_separators=0
let g:buffet_show_index=1
let g:buffet_always_show_tabline=1

function! g:BuffetSetCustomColors()
hi! BuffetCurrentBuffer cterm=NONE ctermbg=56 ctermfg=15 guibg=#000000 guifg=#0
hi! BuffetTrunc cterm=bold ctermbg=6 ctermfg=15 guibg=#1c1c1c guifg=#0
hi! BuffetBuffer cterm=NONE ctermbg=234 ctermfg=15 guibg=#504945 guifg=#0
hi! BuffetTab cterm=NONE ctermbg=35 ctermfg=15 guibg=#458588 guifg=#0
hi! BuffetActiveBuffer cterm=NONE ctermbg=10 ctermfg=15 guibg=#999999 guifg=#504945
endfunction


