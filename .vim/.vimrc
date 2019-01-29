filetype on
syntax enable " enable syntax processing
colorscheme molokai

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
"set expandtab       " tabs are spaces

set number " show line numbers
set showcmd " show command in bottom bar
"set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"let mapleader=","       " leader is comma

set laststatus=2
if !has('gui_running')
		  set t_Co=256
endif
set noshowmode

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb
" of data. Useful for copying large amounts of data between files.
 set viminfo='100,<9999,s100

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Bind to toggle NERDTree
map <C-e> :NERDTreeToggle<CR>

" Fuzzy finder bind
map <C-p> :FZF<CR>

" Compile & Run c++
nmap <silent> <F9> :SCCompileRunAsync<cr>:SCViewResultAsync<CR>
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'valloric/youcompleteme'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'xuhdev/SingleCompile'

" Initialize plugin system
call plug#end()
