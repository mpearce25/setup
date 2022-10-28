#!/usr/bin/env zsh

# ./mac/mac_settings.sh
./oh_my_zsh_setup.sh

# Sync dotfiles before installing apps. Note: this might crash on a fresh install if dotfile folders don't exist yet.
./dotfiles/sync_dotfiles.sh -f
source ~/.zshrc;

# ########################################
# Install and setup apps
# ########################################
./mac/brew_setup.sh
./mac/install_apps.sh
./mac/init_apps.sh

