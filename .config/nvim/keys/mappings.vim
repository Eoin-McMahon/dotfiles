" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>


" Ctrl-l to clear previous search
nnoremap <leader>? :nohlsearch<CR>

" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Switch to last open buffer
noremap <leader><leader> :e #<CR>       " switch to last open buffer

"Make tab go to the matching pair item
nnoremap <Tab> %

" Disable capital w and q
cabbrev W w                             
cabbrev Q q                            

" Disable Arrow keys -> you gotta learn hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Automatically enter insert mode on backspace
nnoremap <BS> i<BS><Esc>`^

" Map r to redo
noremap r <C-r>
" Map ctrl r to scroll up, since scroll down is ctrl e
noremap <C-r> <C-y>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Use escape to exit terminal
tnoremap <Esc> <C-\><C-n>
nmap <leader>t :term<CR>
