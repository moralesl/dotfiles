# Dotfiles

This repository contains my Dotfiles and anything I use to setup and maintain my Mac.

## Usage

Clone repository
```
cd ~
mkdir .dotfiles
git clone https://github.com/moralesl/dotfiles .dotfiles
```

Run setup
```
./setup.sh
```

## Structure

* `setup.sh`:     Setup script
* `Brewfile`:     All brew bundles that need to be installed
* `.zshrc`:       Zsh configurations
* `aliases.zsh`:  Aliases that can be used inside the zsh
* `.macos`:       MacOs Preference Overwrites

## Acknowledgement
This repository was inspired by [Dries Vints' dotfiles](https://github.com/driesvints/dotfiles) repo.
