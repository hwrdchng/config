" Syntax highlighting
syntax on

" Two space autoindented tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" View column number
set ruler

" Load plugins and auto indentation for specific filetype
filetype indent on
filetype plugin on

" Use mouse
set mouse=a

" Change into directory of file
set autochdir

" Line numbers
set number

" Show matching braces
set showmatch

" Highlight search results
set hlsearch

" Tab Completion
set wildmode=longest,list

" Lookup ctags file
set tags=tags,tags;$HOME

" Highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

" For times when :wq is not entered correctly
command WQ wq
command Wq wq
command W w
command Q q

" Latex binding
map <C-l> :w<CR>:!pdflatex %<CR><CR>:!open -a Preview %<.pdf<CR><CR>
map <C-n> :noh<CR>

