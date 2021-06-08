" ------------------------
" Installed Plugins
" ------------------------

filetype plugin on
call plug#begin('~/.vim/plugged')
    Plug 'gruvbox-community/gruvbox'
    Plug 'liuchengxu/vim-which-key'
    Plug 'preservim/nerdtree'
    Plug 'mhinz/vim-startify'    
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'tpope/vim-fugitive'    
    Plug 'justinmk/vim-sneak'
    Plug 'tpope/vim-commentary'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mbbill/undotree'
    Plug 'martinda/Jenkinsfile-vim-syntax'
call plug#end()

" ------------------------
" Pull in plugin specific configurations
" ------------------------

source $HOME/.config/nvim/plugins/vim_nerdtree.vim
source $HOME/.config/nvim/plugins/vim_sneak.vim
source $HOME/.config/nvim/plugins/vim_commentary.vim
source $HOME/.config/nvim/plugins/vim_whichkey.vim
source $HOME/.config/nvim/plugins/vim_fzf.vim
source $HOME/.config/nvim/plugins/vim_undotree.vim

" ------------------------
" Colours
" ------------------------

let g:gruvbox_contrast_dark='hard' "dark mode
let g:gruvbox_italic=1
let g:gruvbox_invert_selection='0' "No highlight
let g:indent_blankline_char = '¦'
let g:indent_blankline_buftype_exclude = ['terminal', 'nofile']
colorscheme gruvbox "colorscheme

