" ------------------------
"  Vim-Plug Autoinstall
" ------------------------

let vimplug_exists=expand('~/.nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
let curl_exists=expand('curl')
endif

let g:vim_bootstrap_langs = "c,python,rust"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim
let g:vim_bootstrap_theme = "gruvbox"
let g:vim_bootstrap_frams = ""

if !filereadable(vimplug_exists)
if !executable(curl_exists)
echoerr "You have to install curl or first install vim-plug yourself!"
execute "q!"
endif
echo "Installing Vim-Plug..."
echo ""
silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
let g:not_finish_vimplug = "yes"

autocmd VimEnter * PlugInstall
endif

" ------------------------
" Installed Plugins
" ------------------------
"
filetype plugin on
call plug#begin('~/.vim/plugged')
    Plug 'gruvbox-community/gruvbox'            " Colour theme
    Plug 'preservim/nerdtree'                   " Project explorer
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " colour in nerd tree
    Plug 'mhinz/vim-startify'                   " emacs style startup screen
    Plug 'ryanoasis/vim-devicons'               " file icon support
    Plug 'tpope/vim-fugitive'                   " Git commands from vim command mode
    Plug 'tpope/vim-commentary'                 " Easy code commenting
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'vim-airline/vim-airline'              " Better status bar
    Plug 'vim-airline/vim-airline-themes'       " themes for airline
    Plug 'mbbill/undotree'                      " persistent undo's
    Plug 'martinda/Jenkinsfile-vim-syntax'      " Syntax highlighting in jenkinsfiles
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }    " emacs style keymap viewer
    Plug 'bagrat/vim-buffet'                    " Better buffer managment
    Plug 'airblade/vim-rooter'                  " change working directory to root of project
    Plug 'airblade/vim-gitgutter'               " Git information in vim gutter
    Plug 'luochen1990/rainbow'                  " Add colour to nested brackets

    " COC specific  plugins
    " Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    " Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
    " Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
    " Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
    " Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
    " Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting
call plug#end()

" --------------------------------------
" Pull in plugin specific configurations
" --------------------------------------

source $HOME/.config/nvim/plugins/vim_nerdtree.vim
source $HOME/.config/nvim/plugins/vim_commentary.vim
source $HOME/.config/nvim/plugins/vim_startify.vim
source $HOME/.config/nvim/plugins/vim_rooter.vim
source $HOME/.config/nvim/plugins/vim_whichkey.vim
source $HOME/.config/nvim/plugins/vim_fzf.vim
source $HOME/.config/nvim/plugins/vim_undotree.vim
source $HOME/.config/nvim/plugins/vim_buffet.vim
source $HOME/.config/nvim/plugins/vim_rainbow.vim

" ------------------------
" Colours
" ------------------------

let g:gruvbox_contrast_dark='hard' "dark mode
let g:gruvbox_italic=1
let g:gruvbox_invert_selection='0' "No highlight
let g:indent_blankline_char = '¦'
let g:indent_blankline_buftype_exclude = ['terminal', 'nofile']
colorscheme gruvbox "colorscheme

