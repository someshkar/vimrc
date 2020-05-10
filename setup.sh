#!/bin/sh
set -e

# This script is made to simplify the configuration of 
# Somesh Kar's Vim Configuration on any GNU/Linux or MacOS machine
# 
# Run this script via:
#   $ curl -fsSL https://vim.somesh.co -o vim-setup.sh
#   $ sh vim-setup.sh

REPO="https://github.com/someshkar/vimrc.git"

vim_setup() {
	
	# Git clone the vim configuration repository
	git clone $REPO

	# Check if .vimrc file already exists
	if [ -f ~/.vimrc ]; then
		echo "Existing .vimrc file found! Backing up..."
		# Move existing .vimrc file to .vimrc.bak
		mv ~/.vimrc ~/.vimrc.bak
	else
		# Move cloned .vimrc file to home directory
		mv vimrc/.vimrc ~/.vimrc
	fi

	# Check if .vim folder already exists
	if [ -d ~/.vim ]; then
		echo "Existing .vim folder found! Backing up..."
		# Move existing .vim folder to .vim.bak
		mv ~/.vim ~/.vim.bak
	else
		# Move cloned .vim folder to home directory
		mv vimrc/.vim ~/.vim
	fi

	# Open Vim and install plugins
	vim +PlugInstall +qall

	# Remove cloned vimrc folder
	rm -rf vimrc
}

# Wrapped up in a function to have some protection against
# only getting a part of the file during "curl | sh"
vim_setup