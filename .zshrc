eval "$(starship init zsh)"
eval "$(anyenv init -)"

autoload -U compinit && compinit -u
autoload -Uz colors
colors

git config --global color.ui auto

setopt print_eight_bit
setopt auto_cd
setopt no_beep
setopt nolistbeep
setopt auto_pushd
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt correct
setopt pushd_ignore_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=1

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

###########################
# AtCoder
############################
function atcoder () {
  # if there has already been a stdin.txt, delete it and make a new file
  if [ -e stdin.txt ]; then 
    rm stdin.txt
  fi
  touch stdin.txt
  # make a new file and make an window for stdin.txt and broaden the window for the source codes
  nvim $1 -o stdin.txt -c "11 wincmd +" 
}

export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:~/Workspace/AtCoder/include/

###########################
# 分割ファイルの読み込み
############################
ZSHHOME="${HOME}/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
    -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
        done
fi
