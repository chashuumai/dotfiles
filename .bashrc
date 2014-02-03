#export PS1="\[\e[0;34m\][\u@\h:\w]\$\[\e[00m\] "
export LSCOLORS=gxfxcxdxbxegedabagacad

alias ls='ls -FG'
alias ll='ls -al'
alias la='ls -a'

# git settings
source ~/.git-prompt.sh
source ~/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\e[0;34m\][\u@\h:\w]\$\[\e[00m\]\[\033[31m\]$(__git_ps1 " [%s]")\[\033[00m\] '

# colordiff
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
  alias less='less -R'
else
  alias diff='diff -u'
fi

#export SCREENDIR=/home/USER/.screens

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
