export GOPATH=$HOME/go
export ZSH="$HOME/.oh-my-zsh"
export PATH=/opt/homebrew/bin:$PATH:$GOPATH/bin

# TMUX RGB colors
[[ $TMUX != "" ]] && export TERM="screen-256color"

# Theme
ZSH_THEME="bira"

plugins=(git nvm)

source $ZSH/oh-my-zsh.sh

