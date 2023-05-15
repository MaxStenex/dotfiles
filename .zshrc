export ZSH="$HOME/.oh-my-zsh"

# TMUX RGB colors
[[ $TMUX != "" ]] && export TERM="screen-256color"

# Theme
ZSH_THEME="robbyrussell"

plugins=(git nvm)

source $ZSH/oh-my-zsh.sh
