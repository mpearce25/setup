#!/usr/bin/env bash

########################################
# Mac apps and tools to install
########################################

########################################
# Updates
########################################
brew update
brew upgrade

########################################
# Installations
# Sections are ordered by usefullness during new setup
# Each section is separated into formula and casks. Subsections are alphabetically ordered
########################################

# web apps
brew install --cask discord
# brew install --cask google-chrome
brew install --cask slack
brew install --cask firefox
# brew install --cask zoom

# audio
brew install --cask spotify

# editors
brew install vim
brew install --cask visual-studio-code
brew install --cask sublime-text
brew install --cask font-hack-nerd-font
# brew install --cask mactex

# shell
brew install tmux
brew install tmuxinator
brew install --cask iterm2

# misc dev utils
# xcode-select --install
brew install coreutils
# ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
brew install fzf
brew install git
brew install gprof2dot
brew install htop
brew install jq
brew install ranger
brew install ripgrep
brew install rsync
brew install tldr
brew install tree
brew install wget
brew install --cask google-cloud-sdk
brew install --cask raspberry-pi-imager

# python
brew install python@3.11
brew install --cask anaconda

# graphics
brew install ffmpeg
brew install graphviz
brew install --cask blender

# 3d printing
brew install --cask ultimaker-cura

# web dev
brew install node
brew install --cask ngrok
brew install --cask postman

# virtualization
brew install --cask docker

########################################
# Cleanup
########################################
brew cleanup
echo "Done! 🍻"
