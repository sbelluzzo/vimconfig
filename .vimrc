filetype off " appears to break mercurial commiting.

" set up Vundle (https://github.com/gmarik/vundle)
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" Vundle-controlled Bundles
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'myusuf3/numbers.vim'
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'jnwhiteh/vim-golang'
Bundle 'bufexplorer.zip'
Bundle 'Valloric/YouCompleteMe'
Bundle 'fs111/pydoc.vim'
Bundle 'wting/rust.vim'
"Bundle 'mattn/zencoding-vim'
"Bundle 'AndrewRadev/switch.vim'
"Bundle 'scrooloose/nerdtree'
"Bundle 'wincent/Command-T'
"Bundle 'kien/ctrlp.vim'

filetype plugin indent on
" End Vundle setup

syntax on
set nocompatible
set background=dark
colorscheme mustang

let mapleader=","		" change the mapleader from \ to ,

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden			" hide buffers when abandoned
set modelines=0
set mouse=a			" turn on support for mouse
set backspace=indent,eol,start	" fix backspace for indents, newlines, etc
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                	" change the terminal's title
let &titleold=getcwd() 		" Fix terminal title after using VIM
set visualbell           	" don't beep
set noerrorbells         	" don't beep

" search stuff
nnoremap / /\v
vnoremap / /\v
set showmatch
set smartcase
set ignorecase
set hlsearch
set incsearch
set gdefault
nnoremap <leader><space> :noh<cr>

" text styling
set wrap
set textwidth=79
set formatoptions=qrn1

" history settings
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" pastemode (turns off autoindent, etc for pasting)
set pastetoggle=<F2>

" make arrow keys work in vim with tmux
nnoremap <Esc>A <up>
nnoremap <Esc>B <down>
nnoremap <Esc>C <right>
nnoremap <Esc>D <left>
inoremap <Esc>A <up>
inoremap <Esc>B <down>
inoremap <Esc>C <right>
inoremap <Esc>D <left>

" Yank text to OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

"set spell
"set spelllang=en_au
"highlight clear SpellBad
"highlight SpellBad cterm=underline ctermfg=red

" highlight trailing whitespace
highlight ExtraWhitespace guibg=DarkCyan ctermbg=Blue
au ColorScheme * highlight ExtraWhitespace guibg=DarkCyan ctermbg=Blue
au BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/
au BufEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/

" highlight whitespace
" set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.
" hide xml and html tabs
"autocmd filetype html,xml set listchars-=tab:>.
"

"""PLUGIN SETTINGS"""
" Powerline settings
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs"
"let g:Powerline_symbols = 'fancy'

" numbers.vim mapping
nnoremap <F3> :NumbersToggle<CR>

" YouCompleteMe options
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
