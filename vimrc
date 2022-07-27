nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>

set number

set guioptions-=a
set title
syntax on
set clipboard=unnamed,autoselect
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set clipboard+=unnamedplus
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END
set listchars=tab:>.
set list

autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set hlsearch
set incsearch
set undofile
set laststatus=2
set wildmenu
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
au BufEnter * set scroll=3
noremap <S-h> 0
noremap <S-l> $
noremap <S-k> <C-u>
noremap <S-j> <C-d>
noremap + <C-a>
noremap - <C-x>
noremap p ]p
noremap P ]P
set completeopt=menuone,noinsert
