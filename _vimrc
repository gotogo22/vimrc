set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-repeat'
Plugin 'sheerun/vim-polyglot'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'jiangmiao/auto-pairs'
Plugin 'simeji/winresizer'
Plugin 'ervandew/supertab'
Plugin 'preservim/nerdcommenter'

call vundle#end()
filetype plugin indent on

let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

function TeachKey(message)
    let summon = join([“!clear; cowsay -f dragon “, a:message, “を押すのだ”])
    exec summon
endfun
nnoremap <buffer> <Left> <Esc>:call TeachKey(‘h’)<CR>
nnoremap <buffer> <Right> <Esc>:call TeachKey(‘l’)<CR>
nnoremap <buffer> <Up> <Esc>:call TeachKey(‘k’)<CR>
nnoremap <buffer> <Down> <Esc>:call TeachKey(‘j’)<CR>
nnoremap <buffer> <PageUp> <Esc>:call TeachKey(‘Ctrl+B’)<CR>
nnoremap <buffer> <PageDown> <Esc>:call TeachKey(‘Ctrl+F’)<CR>
inoremap <buffer> <Left> <Esc>:call TeachKeyBi)ding(‘h’)<CR>
inoremap <buffer> <Right> <Esc>:call TeachKey(‘l’)<CR>
inoremap <buffer> <Up> <Esc>:call TeachKey(‘k’)<CR>
inoremap <buffer> <Down> <Esc>:call TeachKey(‘j’)<CR>
inoremap <buffer> <PageUp> <Esc>:call TeachKey(‘Ctrl+B’)<CR>
inoremap <buffer> <PageDown> <Esc>:call TeachKey(‘Ctrl+F’)<CR>
vnoremap <buffer> <Left> <Esc>:call TeachKeyBi)ding(‘h’)<CR>
vnoremap <buffer> <Right> <Esc>:call TeachKey(‘l’)<CR>
vnoremap <buffer> <Up> <Esc>:call TeachKey(‘k’)<CR>
vnoremap <buffer> <Down> <Esc>:call TeachKey(‘j’)<CR>
vnoremap <buffer> <PageUp> <Esc>:call TeachKey(‘Ctrl+B’)<CR>
vnoremap <buffer> <PageDown> <Esc>:call TeachKey(‘Ctrl+F’)<CR>

nnoremap <buffer> <Del> <Esc>:<C-u>!sl<CR>
inoremap <buffer> <Del> <Esc>:<C-u>!sl<CR>
vnoremap <buffer> <Del> <Esc>:<C-u>!sl<CR>

set backspace=0
" setting
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" ビープ音を消す
set belloff=all
" 画面分割
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l
