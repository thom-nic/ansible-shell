"Use pathogen for plugins: https://github.com/tpope/vim-pathogen
"My favorite bundles are at https://github.com/thom-nic/vim-bundles
runtime bundle/vim-pathogen/autoload/pathogen.vim
silent! call pathogen#infect()

"__________________ General Settings ___________________
filetype plugin indent on

syntax on
" Default color scheme bundled with Vim
colorscheme desert
" Preferred plugin color scheme, if available
silent! colorscheme molokai

" Set the tab defaults to 2 spaces
set ts=2  sw=2 et
" Auto/smart/copy current indent scheme.
set ai si ci

" wrap line at the end of a word instead of character.
set lbr
" Put this char at the beginning of a wrapped line:
set sbr=\

" Automatically change working directory to the path for the current buffer
set acd
" Tab complete & globbing functions ignore these patterns
set wildignore+=*.o,*.obj,*.bak,*.exe,*.class,*.pyo,*.pyc,*~

" Keep various temp files files in a sandbox instead of disabling the features
set directory=~/.vim/swap//,/tmp//
set backupdir=~/.vim/backup//,/tmp//
set undodir=~/.vim/undo//,/tmp//
" Don't write backup files to the filesystem.
"set nobackup writebackup
" Don't write undo files to the filesystem.
"set noundofile

" Allow switching buffers w/o saving in between.
set hidden

" Use \n line endings
set fileformat=unix

" Incremental search as you type
set incsearch
" When searching, ignore case unless upper/mixed case is used
set ignorecase smartcase

" Highlight the current line
set cursorline
" Hilight vertical line @ 80 chars
set colorcolumn=80

" Folding: (don't usually want this enabled by default).
set foldmethod=indent
set nofoldenable
set foldlevel=99 "when folds are enabled they are left open.
"set foldcolumn=2

" Scroll options:  keep 1 line visible above & below cursor when scrolling
set so=1
" Sidescroll options:
set siso=3

"____________________ Key mappings: ______________________
" Ctrl-A -> Start of line, Ctrl-E -> End of line
map <C-a> <Home>
map <C-e> <End>
"Close a saved buffer:
map <C-b> :bd<CR>
map! <C-b> <ESC><c-b><insert>
"Close an unsaved buffer (only in normal mode):
map <C-S-B> :bd!<cr>
"Go to the next buffer:
map <C-j> :bn<CR>
map! <C-j> <ESC><C-j><insert>
vm  <C-j> <ESC><C-j><insert>
"Go to the previous buffer:
map <C-k> :bp<CR>
map! <C-k> <ESC><C-k><insert>
vm <C-k> <ESC><C-k><insert>
"go to the last used buffer:
map <C-l> :b #<CR>
map! <C-l> <ESC><C-l><INSERT>
vm <C-l> <ESC><C-l><INSERT>
"Use Ctrl-Space for autocomplete/intellisense.
"insert mode only
map! <C-SPACE> <C-N>
map! <C-S-SPACE> <C-P>
" Open a new tab:
map <C-T> :tabe<CR>
map! <C-T> <ESC><C-T><INSERT>
" Indent/unident selected lines
vnoremap < <gv
vnoremap > >gv

"_______________ Plugin Options ________________

" Set fonts for airline
" https://github.com/bling/vim-airline#integrating-with-powerline-fonts
let g:airline_powerline_fonts = 1

" ______________ File associations ______________
"
au BufRead,BufNewFile *.less        setf css
au BufRead,BufNewFile *.scss        setf css
au BufRead,BufNewFile Gemfile*      setf ruby
au BufRead,BufNewFile *.ru          setf ruby
au BufRead,BufNewFile Rakefile      setf ruby
au BufRead,BufNewFile Vagrantfile   setf ruby
au BufRead,BufNewFile *.gradle      setf groovy
au BufRead,BufNewFile *.md          setf markdown
au BufRead,BufNewFile *.json        setf javascript
au BufRead,BufNewFile *.pde         setf c
au BufRead,BufNewFile *.ino         setf cpp

" Tab specifics for python files:
au FileType python setl sw=4 ts=4 et
