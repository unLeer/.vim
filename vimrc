set nocompatible
set number
set laststatus=2
set background=dark
set termguicolors
set backspace=indent,eol,start
set incsearch
set clipboard=unnamed
set hlsearch
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set wildmenu
set ignorecase
set smartcase
set autochdir
set noeb
set belloff=all
" disable ominicomplete preview
set completeopt-=preview
nnoremap gr :GoReferrers<CR>

" tablength exceptions
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType slim setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType go setlocal shiftwidth=4 tabstop=4

filetype on
filetype plugin on
filetype plugin indent on
syntax enable
colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE

augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

let g:gruvbox_italic=1

" clang path on osx
let s:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

let g:go_fmt_command = "goimports"

let g:airline#extensions#tabline#enabled = 1

call pathogen#infect()
syntax on
filetype plugin indent on

let g:ale_completion_enabled = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
hi comment ctermfg=6
