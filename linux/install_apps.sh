#!/usr/bin/env bash
./update.sh

########################################
# Installations
# Sections are ordered by usefullness during new setup
# Each section is separated into snap and apt. Subsections are alphabetically ordered
########################################

# web apps
sudo snap install chromium
sudo snap install firefox
sudo snap install slack
sudo snap install zoom-client

# audio
sudo snap install spotify

# editors
sudo snap install code --classic
sudo snap install sublime-text --classic
