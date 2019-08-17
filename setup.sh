#!/bin/bash
set -euo pipefail

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
