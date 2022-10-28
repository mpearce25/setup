#!/usr/bin/env bash

# Install brew non-interatively
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Taps
brew tap homebrew/cask-fonts
