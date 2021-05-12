if [[ $(command -v exa) ]]; then
    alias e='exa'
    alias l=e
    alias ls=e
    alias ea='exa -a --icons'
    alias la=ea
    alias ee='exa -aal --icons'
    alias ll=ee
    alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
    alias lt=et
    alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
    alias lta=eta
    alias tree='e -T --icons'
fi

alias his='history'
alias ...='cd ../..'
alias ....='cd ../../..'
alias v='vim'
alias vi='vim'
alias mss='mysql.server start'
alias so='source'
alias be='bundle exec'
alias ber='bundle exec ruby'
 
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gct='git commit'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gcma='git checkout master'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'

alias lag='lazygit'
alias lad='lazydocker'

alias intra='GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa_intra"'
alias norminette='~/.anyenv/envs/pyenv/versions/3.9.1/bin/norminette'
alias norm="norminette"

# man-jp
alias eman='env LANG=en man'
alias man='env LANG=ja_JP.UTF-8 man'
