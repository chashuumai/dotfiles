" Display
set number
set showmatch
syntax on

" Input
set backspace=2
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Cursor
set cursorline

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Enter code
set fileformats=unix,dos,mac


set nowrapscan

" Other
set list
set listchars=tab:^_,trail:-,extends:»,precedes:«,nbsp:%
set ruler
set title
set showcmd
set hlsearch
set laststatus=2

" buffertime continue undo
set hidden

" highlight off
nnoremap <Esc><Esc> :nohlsearch<CR>

" ####################
" mini buffer config
" :e file minibuffer start
" ctrl+n next , ctrl+p prev
" space + d delete
" n choose number
nnoremap <C-p>  :bp<CR>
nnoremap <C-n>  :bn<CR>
nnoremap <Space><Space> :b#<CR>
nnoremap <Space>d   :bd<CR>
nnoremap <Space>l   :ls<CR>:b
nnoremap <Space>n   :b

" ; is :
nnoremap ; :
" set wrap time, can seeing move 
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
" Y is copy line end
nnoremap Y y$
" 下に移動
inoremap <C-j> <Down>
" 上に移動
inoremap <C-k> <Up>
" 左に移動
inoremap <C-h> <Left>
" 右に移動
inoremap <C-l> <Right>

" カッコやクオートなどを入力した際に左に自動で移動します
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap <> <><Left>
