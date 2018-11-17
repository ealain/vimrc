" Detect the type of file that is being edited, load related plugins and
" indentation information.
filetype plugin indent on

" Enable syntax highlighting.
syntax on

" A buffer becomes hidden when it is abandonned.
set hidden

" If more than one match, list all matches and complete till longest common
" string.
set wildmode=list,longest,full
" Ignore case for completion.
set wildignorecase

" Show partial commands in the last line of the screen.
set showcmd

" Highlight searches.
set hlsearch

" Disable modelines (activate options from edited files) for security.
set nomodeline

" Use case insensitive search, except when using capital letters.
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action.
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on.
set autoindent

" Default status line with total number of lines.
set statusline=%<%f\ %h%m%r%=%c%V\ %L

" Always display the status line.
set laststatus=2

" Use visual bell instead of beeping when doing something wrong.
set visualbell
set t_vb=

" Show the line number relative to line with the cursor.
set relativenumber
" Display the current line number.
set number

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=10

" Indentation settings to use 4 spaces instead of tabs.
set shiftwidth=4
set softtabstop=4
set expandtab

" " Directory for swap files.
" set directory=~/.vim/swap

" Select color.
colorscheme slate
" Set a black background
highlight Normal ctermbg=16
" Reduce the color of the line numbers.
highlight LineNr ctermfg=darkgrey
highlight CursorLineNr ctermfg=darkgrey
" Reduce the color of the status lines.
highlight StatusLine ctermfg=black ctermbg=white
highlight StatusLineNC ctermfg=black ctermbg=grey
" Reduce the color of the vertical split.
highlight VertSplit ctermfg=black ctermbg=grey
" Remove underline and reduce the color of 'cursorline'.
highlight Search ctermfg=0 ctermbg=10

" Highlight characters written in columns above 80.
highlight OverLength ctermfg=red
match OverLength /\%>80v.\+/

" Stay on the current line if it wraps.
map j gj
map k gk

" Shortcut to disable highlighting.
map \q :nohlsearch<CR>

" NAVIGATION
" Map commands to change buffers quickly.
map <C-n> :bnext<CR>
map <C-p> :bprev<CR>
map <C-d> :bdelete<CR>

" More natural splits
set splitbelow
set splitright


" PLUGINS AND FILETYPE SPECIFIC CONFIGS

" " Syntastic
" " Enable plugin 'syntastic'.
" set runtimepath^=~/.vim/bundle/syntastic
" " Set the height of the location list
" let g:syntastic_loc_list_height = 5
" " Enable ESLint to check Javascript
" let g:syntastic_javascript_checkers = ['eslint']

" " Vue.js
" " Enable plugin 'vim-vue'.
" set runtimepath^=~/.vim/bundle/vim-vue
" " Set the filetype to vue when the edited file ends in .vue
" autocmd BufRead,BufNewFile *.vue setlocal filetype=vue
" " Syntax state at the start of the file (decreases performance).
" autocmd FileType vue syntax sync fromstart
" " Use mappings instead.
" noremap <C-O> :syntax sync fromstart<CR>
" noremap <C-I> :syntax sync clear<CR>

" " Pug
" " Enable plugin 'vim-pug'.
" set runtimepath^=~/.vim/bundle/vim-pug

" " Javascript
" " Enable plugin 'yajs'.
" set runtimepath^=~/.vim/bundle/yajs

" " Editor config
" " Enable plugin 'editorconfig-vim'
" set runtimepath^=~/.vim/bundle/editorconfig-vim

" " LaTeX
" " Wrap lines
" autocmd BufRead,BufNewFile *.tex setlocal textwidth=78 nosmartindent
