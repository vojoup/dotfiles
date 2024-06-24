#!/bin/bash

echo "Installing dotfiles"

if [ "$(uname)" == "Darwin" ]; then
	echo "Running on OSX"

	echo "Using brew to install dependencies"
	source install/brew.sh

	echo "Updating OSX settings"
	source install/osx.sh
fi

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."
