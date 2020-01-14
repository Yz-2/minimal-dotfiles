""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
" 挙動を vi 互換ではなく、Vim のデフォルト設定にする
set nocompatible
" 一旦ファイルタイプ関連を無効化する
filetype off
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile
" バックアップディレクトリの指定(でもバックアップは使ってない)
set backupdir=$HOME/.vimbackup
" バッファで開いているファイルのディレクトリでエクスクローラを開始する(でもエクスプローラって使ってない)
set browsedir=buffer
" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden
" 改行時に前の行のインデントを継続する
set noautoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" タブをスペースã«置き換える
set expandtab
" タブ文字の表示幅
set tabstop=2
" Vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" clipboard連携
set clipboard+=unnamed
" エラーメッセージの表示時にビープを鳴らさない
set noerrorbells
" 全角文字専用の設定
set ambiwidth=double
" wildmenuオプションを有効(vimバーからファイルを選択できる)
set wildmenu
" バッファスクロール
set mouse=a
" syntaxを有効
syntax enable
" 行番号を表示する
set number
" 行番号の色
highlight LineNr ctermfg=darkyellow
" 自動コメントアウトを解除
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END
