#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function sync_dotfiles() {
	# Dotfiles
	rsync \
		.aliases_and_functions \
		.condarc \
		.exports \
		.gitignore \
	  	.hushlogin \
		.tmux.conf \
	 	.wgetrc \
		.vimrc  \
		.zshenv \
		.zshrc \
		~;

	# Dotfolders. --mkpath might fail if mac has old version of rsync
	rsync -r --mkpath .config/tmuxinator/* ~/.config/tmuxinator;
	rsync -r --mkpath .oh-my-zsh/themes/*  ~/.oh-my-zsh/themes;

	source ~/.zshenv;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	sync_dotfiles;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		sync_dotfiles;
	fi;
fi;
unset sync_dotfiles;
