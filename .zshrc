#########################
# .zshrc
#########################
## Pathを設定
#path=(/usr/local/bin(N-/) /usr/bin(N-/) /bin(N-/) $path)
#path=(/usr/local/sbin(N-/) /usr/sbin(N-/) /sbin(N-/) $path)
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
## 補完機能を有効
autoload -Uz compinit
compinit
## 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
## ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..
## sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
## Tabや矢印で選択
zstyle ':completion:*:default' menu select=1
## ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
## 補完候補
setopt auto_list
## 候補切り替え
setopt auto_menu
## 履歴ファイル名とサイズ
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
## ヒストリーに重複を表示しない
setopt histignorealldups
## ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
## 日本語ファイル名を表示可能にする
setopt print_eight_bit
## フローコントロールを無効にする
setopt no_flow_control
## 色を使用出来るようにする
autoload -Uz colors
colors
# vcs_info
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
  LANG=en_US.UTF-8 vcs_info
  RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg
## ls
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
## rm
alias rm='rm -i'
## cp
alias cp='cp -i'
## mv
alias mv='mv -i'
## mkdir
alias mkdir='mkdir -p'
## ファイル内の文字列検索
alias word='find ./ -type f -print | xargs grep'
