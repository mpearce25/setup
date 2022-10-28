# Plugins
plugins=(git zsh-autosuggestions vi-mode)

# Theme
export ZSH="/Users/matt/.oh-my-zsh"
ZSH_THEME="conda-agnoster"
source $ZSH/oh-my-zsh.sh

# Python
PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH

# Vim everywhere
export EDITOR=vim
bindkey -v
