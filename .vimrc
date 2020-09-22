"vim setting
"系統ごとに分けてある
"系統のタグの前には　<系統>　と書いてある

"文字コードをUFT-8に設定
set fenc=utf-8

"編集中のファイルが変更されたら自動で読み直す
set autoread

"バッファが編集中でもその他のファイルを開けるように
set hidden

"入力中のコマンドをステータスに表示する
set showcmd


"<補完>
"コマンドラインの補完
set wildmode=list:longest

"コードの自動補完
call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.vim'
call plug#end()


"<系統>見た目系
"行番号を表示
set number

"現在の行を強調表示
set cursorline

"自動インデント
set autoindent

"インデントはスマートインデント
set smartindent

"ビープ音を可視化
set visualbell

"括弧入力時の対応する括弧を表示
set showmatch
set matchtime=1




"折り返し時に表示行単位での移動ができるようにする
nnoremap j gj
nnoremap k gk

"シンタックスハイライトの有効化
syntax enable

"カラースキームの設定
call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
call plug#end()
colorscheme molokai
hi Comment ctermfg=DarkBlue

"ヤンクした内容を別ウィンドウにペーストできるように
"set clipboard=unnamed,autoselect

"Undoの永続化
if has('persintent_undo')
    set undodir=~/.vim/undo
    set undofile
endif


"<系統>Tab系
"Tab文字を半角スペースにする
set expandtab

"行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4

"行頭でのTab文字の表示幅
set shiftwidth=4


"<系統>検索系
"検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

"検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

"検索文字列入力時に順次対象文字列のヒットさせる
set incsearch

"検索時に最後まで行ったら最初に戻る
set wrapscan

"検索語をハイライト表示
set hlsearch

"ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


"<系統>キーボード
"insertモードでESCをjjで打てるように
inoremap jj <Esc>
"日本語入力状態でjjを押してもESCになるように
inoremap っj <Esc>


"ESCをc-jで打てるように
noremap <C-j> <Esc>
inoremap  <C-j> <Esc>

"入力モードでのカーソル移動
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"英語のスペルチェック
set spell
set spelllang=en,cjk

"<Plug in>
"for tex
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
call plug#end()

let g:vimtex_compiler_latexmk = {'background':1, 'build_dir':'', 'continuous':1, 'options':['-pdfdvi','-verbose','-file-line-error','-synctex=1','-interaction=nonstopmode',],}
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'

"for markdown
"call plug#begin('~/.vim/vim-markdown')
"Plug 'tpope/vim-markdown'
"call plug#end()
"call plug#begin('~/.vim/previm')
"Plug 'kannokanno/previm'
"call plug#end()
"call plug#begin('~/.vim/open-browser.vim')
"Plug 'tyru/open-browser.vim'
"call plug#end()
"" Need: kannokanno/previm
"let g:previm_open_cmd = 'open -a Google Chrome'
"augroup PrevimSettings
"    autocmd!
"    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
"augroup END
"nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl-pでプレビュー
"" 自動で折りたたまないようにする
"let g:vim_markdown_folding_disabled=1
"let g:previm_enable_realtime = 1
"
