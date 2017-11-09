source $VIMRUNTIME/vimrc_example.vim
colorscheme murphy
"colorscheme bleen
"set background=light
"set background=dark
"hi Visual term=reverse cterm=reverse guibg=Grey

"from tobit
set nu "number lines
"source $VIMRUNTIME/colors/fu.vim "colour theme not scheme
"source $VIMRUNTIME/colors/blazer.vim "colour theme not scheme
set mouse=a "mouse functionality (like gvim!)
set tw=10000 "no wrapping text onto the next line
set listchars+=precedes:<,extends:> "when nowrap is set-has carroots when a line extends beyond the edge
syntax on "colours!
set backspace=indent,eol,start "makes backspace work in Vim 7.3
set hls "highlighting!
set ruler "for cursor position in the bottom right corner
set incsearch "search begins as soon as you start typing instead of waiting for <ENTER>
set ai! "auto indent

set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,resize

set expandtab "no tab characters, spaces instead except with makefiles
autocmd BufReadPost,FileReadPost,BufNewFile [Mm]ake{file,} setlocal noexpandtab

"more tabs for my python style
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

"==================================================
"rebinds
"==================================================
"traverse ?buffer? instead of line
"nnoremap gk k
"nnoremap gj j
"nnoremap k gk
"nnoremap j gj

"scroll buffer with better names
"nnoremap <C-J> <C-E>
"nnoremap <C-K> <C-Y>
"vnoremap <C-J> <C-E>
"vnoremap <C-K> <C-Y>

"change tabs directionaly with ^h and ^l
nnoremap <C-h> gT
nnoremap <C-l> gt

"stretch buffers
"nnoremap + <C-W>+
"nnoremap - <C-W>-

"alternate keys for indenting/unindenting
inoremap <S-Tab> <C-O><LT><LT>
nnoremap <Tab> >>
nnoremap <S-Tab> <LT><LT>j
vnoremap <Tab> >
vnoremap <S-Tab> <LT>

"rebind for space: prime real estate wasted by default
nnoremap <Space> <ESC>

"highlighting extra whitespace from max
hi def link whiteSpaceError Error
autocmd Syntax * syn match whiteSpaceError "\(\S\| \)\@<=\t\+"
autocmd Syntax * syn match whiteSpaceError "\s\+\%#\@<!$"

"pathogen vim modules stuff
execute pathogen#infect()
syntax on
filetype plugin indent on

"fugitive.vim
nnoremap <C-g>c :Gcommit
nnoremap <C-g>a :Gwrite

"slimux
map <C-c><C-c> :SlimuxREPLSendLine<CR>
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>

"paste formatted time
nnoremap t "=strftime("%Y-%m-%d %H:%M:%S")<CR>P

" Open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle nerd tree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

map <S-Down> :m+1 <CR>
map <S-Up> :m-2 <CR>

