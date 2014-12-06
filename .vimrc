" ----------------------------------------------------
" Neobundle Setting
" https://github.com/Shougo/neobundle.vim
" ----------------------------------------------------

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible              " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'
"NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'grep.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'drillbits/nyan-modoki.vim'
NeoBundle 'tyru/caw.vim.git'
"NeoBundle 'tpope/vim-commentary'
"NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/AnsiEsc.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" ----------------------------------------------------
" Setting
" ----------------------------------------------------

" Display
set number
set showmatch
syntax on

" Input
set backspace=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab

" Cursor
set cursorline

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Enter code
set fileformats=unix,dos,mac

" Search
set wrapscan
set hlsearch
set ignorecase
set incsearch

" Other
set list
set listchars=tab:^_,trail:-,extends:»,precedes:«,nbsp:%
set ruler
set title
set showcmd
set laststatus=2
set mouse=a
set clipboard=unnamed

" buffertime continue undo
set hidden

" ----------------------------------------------------
" Keymap
" ----------------------------------------------------

" easy edit vimrc
nnoremap <Space>.
      \ :<C-u>edit $MYVIMRC<CR>
nnoremap <Space>s.
      \ :<C-u>source $MYVIMRC<CR>

" highlight off
nnoremap <Esc><Esc> :nohlsearch<CR>

" ----------------------------------------------------
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
" all select
nnoremap g<C-a> ggVG
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

" オプションを簡単に切り替える
nnoremap <Space>ow
      \  :<C-u>setlocal wrap!
      \ \|     setlocal wrap?<CR>

" レジスタ/マークの確認を楽にする
nnoremap <Space>m  :<C-u>marks
nnoremap <Space>r  :<C-u>registers

" 最後に変更されたテキストを選択する
nnoremap gc  `[v`]

" /と?の検索を楽にする
cnoremap <expr> /
\ getcmdtype( == '/' ? '\/' : '/' )

" 文字エンコーディングを指定してファイルを開く
command! -bang -nargs=? Utf8
\ edit<bang> ++enc=utf-8 <args>

" tab pagesを使い易くする
nnoremap <C-t>  <Nop>
nnoremap <C-t>n  :<C-u>tabnew<CR>
nnoremap <C-t>c  :<C-u>tabclose<CR>
nnoremap <C-t>o  :<C-u>tabonly<CR>
nnoremap <C-t>j  :<C-u>execute 'tabnext' 1 + (tabpagenr() + v:count1 - 1) % tabpagenr('$')<CR>
nnoremap <C-t>k  gT

" tags-and-searchesを使い易くする
nnoremap t  <Nop>
nnoremap tt  <C-]>           「飛ぶ」
nnoremap tj  :<C-u>tag<CR>   「進む」
nnoremap tk  :<C-u>pop<CR>   「戻る」
nnoremap tl  :<C-u>tags<CR>  履歴一覧

" :helpを3倍の速度で引く
nnoremap <C-h>  :<C-u>help<Space>


" ----------------------------------------------------
" caw
" commentout
" ----------------------------------------------------
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)

" ----------------------------------------------------
" nerdtree
" ----------------------------------------------------
let NERDTreeShowHidden = 1
autocmd VimEnter * execute 'NERDTree'

" ----------------------------------------------------
" NeoBundle 'scrooloose/syntastic'
" ----------------------------------------------------
let g:syntastic_javascript_checker = "jshint" "JavaScriptのSyntaxチェックはjshintで
let g:syntastic_check_on_open = 0 "ファイルオープン時にはチェックをしない
let g:syntastic_check_on_save = 1 "ファイル保存時にはチェックを実施

" ----------------------------------------------------
" nyan-modoki
" ----------------------------------------------------
set laststatus=2
set statusline=%F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
let g:nyan_modoki_select_cat_face_number = 2
let g:nayn_modoki_animation_enabled= 1

" ----------------------------------------------------
" Unite.vim
" ----------------------------------------------------
" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
" noremap <C-P> :Unite buffer<CR>
" ファイル一覧
" noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
" noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
