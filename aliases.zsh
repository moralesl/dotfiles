# Zsh
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias reloadcli="source $HOME/.zshrc"

# Directories
alias dotfiles="cd $DOTFILES"
alias workspace="cd $HOME/workspace"

# Directory traversal
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# TheFuck
eval $(thefuck --alias)
alias fu=fuck

# Docker
## See: https://blog.baudson.de/blog/stop-and-remove-all-docker-containers-and-images
alias dkr-stop-all='docker stop $(docker ps -aq)'
alias dkr-rm-all-containers='docker rm $(docker ps -aq)'
alias dkr-rm-all-images='docker rmi $(docker images -q)'
alias dkr-clean-up='docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi $(docker images -q)'

# GGP
alias ggp='java -jar $HOME/workspace/sandbox/ggp/aws-greengrass-provisioner/build/libs/AwsGreengrassProvisioner.jar'
