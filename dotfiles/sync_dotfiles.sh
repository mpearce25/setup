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

	# Dotfolders
	# Create folders first since --mkpath isn't available on older versions of rsync
	TMUXINATOR_DEST=~/.config/tmuxinator
	mkdir -p $TMUXINATOR_DEST
	rsync -r .config/tmuxinator/* $TMUXINATOR_DEST

	ZSH_THEMES_DEST=~/.oh-my-zsh/themes
	mkdir -p $ZSH_THEMES_DEST
	rsync -r .oh-my-zsh/themes/*  $ZSH_THEMES_DEST

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
