#!/bin/bash
set -euo pipefail

ZSHRC_FILE=$HOME/.zshrc
OH_MY_ZSH_DIR=$HOME/.oh-my-zsh
DOTFILES=$HOME/.dotfiles

echo "Setting up your Mac..."

echo "Check for Homebrew and install if we don't have it"
if [ ! $(which brew) ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Update brew"
brew update

echo "Install all dependencies with bundle (See Brewfile)"
brew tap homebrew/bundle
brew bundle

echo "Make ZSH the default shell environment if it is not the default already"
if [ $SHELL != "/bin/zsh" ]; then
	sudo echo "$(which zsh)" >> /etc/shells;
	chsh -s $(which zsh);
else
	echo "ZSH is already the default";
fi

if [ ! -d $OH_MY_ZSH_DIR ]; then
	echo "Setting up oh-my-zsh";
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
else
	echo "Oh-my-zsh is already installed";
fi

echo "Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles"
rm -rf $ZSHRC_FILE
ln -s $DOTFILES/.zshrc $ZSHRC_FILE

echo "Reloading shell"
source $OH_MY_ZSH_DIR/oh-my-zsh.sh
