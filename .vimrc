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


"<系統>見た目系
"行番号を表示
set number

"現在の行を強調表示
set cursorline

"インデントはスマートインデント
set smartindent

"ビープ音を可視化
set visualbell

"括弧入力時の対応する括弧を表示
set showmatch

"コマンドラインの補完
set wildmode=list:longest

"折り返し時に表示行単位での移動ができるようにする
nnoremap j gj
nnoremap k gk

"シンタックスハイライトの有効化
syntax enable

"カラースキームの設定
colorscheme default 


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
inoremap <silent> jj <esc>
"ESCをc-jで打てるように
noremap <C-j> <esc>

"入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
