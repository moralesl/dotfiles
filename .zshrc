# For the original see: https://github.com/robbyrussell/oh-my-zsh/blob/master/templates/zshrc.zsh-template

# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
# ZSH_THEME="minimal"
ZSH_THEME="powerlevel10k/powerlevel10k"

export UPDATE_ZSH_DAYS=14

COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFILES

plugins=(
	aws
	docker
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/.toolbox/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
