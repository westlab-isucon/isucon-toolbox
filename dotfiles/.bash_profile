# promptの設定
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[35m\]\h:\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

export EDITOR=vim

export GOPATH=/home/isucon/isubata/webapp/go
export PATH=/home/isucon/local/go/bin:$HOME/go/bin:$PATH

# エイリアス
alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -a --color'
alias lal='ls -la --color'
alias lla='ls -la --color'
alias vi='vim'

alias alp='alp --file /var/log/nginx/access.log ltsv --sort=avg --reverse | head -n 20'

