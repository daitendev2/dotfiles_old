if &compatible
set nocompatible
endif

"dein.vim
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
"call dein#add('Shougo/vimproc.vim', {'build': 'make'})
"call dein#add('Shougo/neocomplete.vim')
"call dein#add('Shougo/neomru.vim')
"call dein#add('Shougo/neosnippet')
call dein#add('scrooloose/syntastic')
call dein#add('mtscout6/syntastic-local-eslint.vim')
call dein#add('Yggdroot/indentLine')
let g:indentLine_char = 'x'
let g:indentLine_color_term = 238
call dein#add('altercation/vim-colors-solarized')
call dein#end()

"syntastic
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_save = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 6

"forES6
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

"syntax
syntax enable
colorscheme solarized
set background=dark
"vi互換を切る
"set nocompatible
"念のため
set encoding=utf-8
"swapとかbackup作らない
set noswapfile autowrite nobackup nowritebackup
"編集中のファイルが変更されたら自動再読込
set autoread
"ヴィジュアルベル禁止
set vb t_vb=


""入力支援
"行番号
set number
"カーソル位置表示
set ruler
"折り返し表示
set wrap
"折り返し行も表示通りに移動
nnoremap j gj
nnoremap k gk
"カーソル行背景色変更
"set cursorline
"カーソル位置カラム背景色変更
"set cursorcolumn
"スクロールしてもn行先まで見える
set scrolloff=4
"改行を超えてbackspaceを有効にする
set backspace=indent,eol,start


""TAB関連
"tabを半角spaceにする
set expandtab
"expandtabの場合のtab幅
set tabstop=2
"cindentやautoindent時に自動挿入されるtab幅
set shiftwidth=2
set softtabstop=2
"autoindent or smartindent
set smartindent
"□○が崩れるのを抑制
set ambiwidth=double


""status bar関連
set laststatus=2
"メッセージ表示欄1行
set cmdheight=1


"検索関連
"検索マッチテキストの強調表示
set hlsearch
"インクリメンタルサーチ有効
set incsearch
"大文字小文字区別しない
set ignorecase
"大文字が入力されたら区別して検索
set smartcase
"検索終了後先頭に戻らない
set wrapscan


"command関連
" コマンドラインの補完
set wildmenu
set wildmode=longest:full,full
"入力中のコマンドを右下に表示
set showcmd
"VISUAL MODEなどを表示
set showmode

set statusline=[%n]\ %f\ %y%h%w%m%r\ 0x%B(%b)\ <%l\,%c%V>%L
"set formatoptions+=mM

"空括弧を閉じたら自動で括弧内に移動
"imap () ()<Left>
"imap {} {}<Left>
"imap [] []<Left>
"imap "" ""<Left>
"imap '' ''<Left>


"タブ、空白、改行の可視化
set list
set listchars=tab:»-,trail:_,nbsp:%

""全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
