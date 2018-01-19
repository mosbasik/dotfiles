" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'snoe/nvim-parinfer.js'
Plug 'neovim/node-host'

" Initialize plugin system
call plug#end()

filetype plugin on
