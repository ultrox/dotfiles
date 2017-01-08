#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# cli tools
brew install ack
brew install tree
brew install wget
# simle line but saved my ass more then once
brew install trash

# development server setup
brew install nginx
brew install dnsmasq

# development tool
brew install ssh-copy-ids
brew install the_silver_searcher
brew install tldr
brew install bro
brew install git
brew install hub
#for vim general purpus fuzzy finder
brew install fzf
brew install macvim --override-system-vim
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install nvm
brew install markdown
brew install diff-so-fancy
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# install neovim
brew install neovim/neovim/neovim

exit 0
