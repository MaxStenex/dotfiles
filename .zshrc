export GOPATH=$HOME/go
export ZSH="$HOME/.oh-my-zsh"

path=(
  $HOME/.local/bin      
  /opt/homebrew/bin     
  $GOPATH/bin           
  /usr/local/go/bin     
  $path                 
)

export PATH

# TMUX RGB colors
[[ $TMUX != "" ]] && export TERM="screen-256color"

# Theme
ZSH_THEME="awesomepanda"

plugins=(git nvm)

source $ZSH/oh-my-zsh.sh

autoload -U add-zsh-hook
