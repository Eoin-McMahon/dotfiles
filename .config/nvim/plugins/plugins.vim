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
    Plug 'gruvbox-community/gruvbox'
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
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    Plug 'bagrat/vim-buffet'
    Plug 'airblade/vim-rooter'

    " COC specific  plugins
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
    Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting
call plug#end()

" ------------------------
" Pull in plugin specific configurations
" ------------------------

source $HOME/.config/nvim/plugins/vim_nerdtree.vim
source $HOME/.config/nvim/plugins/vim_sneak.vim
source $HOME/.config/nvim/plugins/vim_commentary.vim
source $HOME/.config/nvim/plugins/vim_startify.vim
source $HOME/.config/nvim/plugins/vim_rooter.vim
source $HOME/.config/nvim/plugins/vim_whichkey.vim
source $HOME/.config/nvim/plugins/vim_fzf.vim
source $HOME/.config/nvim/plugins/vim_undotree.vim
source $HOME/.config/nvim/plugins/vim_coc.vim
source $HOME/.config/nvim/plugins/vim_buffet.vim

" ------------------------
" Colours
" ------------------------

let g:gruvbox_contrast_dark='hard' "dark mode
let g:gruvbox_italic=1
let g:gruvbox_invert_selection='0' "No highlight
let g:indent_blankline_char = '¦'
let g:indent_blankline_buftype_exclude = ['terminal', 'nofile']
colorscheme gruvbox "colorscheme

