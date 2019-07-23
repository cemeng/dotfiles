#!/bin/bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install macvim
brew install the_silver_searcher
brew install tree
brew cask install iterm2

# Ruby
brew install chruby
brew install ruby-install

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Vim
mkdir ~/.vim/sessions

# Dotfiles
cp ~/dotfiles/ackrc ~/.ackrc
cp ~/dotfiles/agignore ~/.agignore
cp ~/dotfiles/bash_profile ~/.bash_profile
cp ~/dotfile/gitconfig ~/.gitconfig
cp ~/dotfiles/vimrc ~/.vimrc
cp ~/dotfiles/zshrc ~/.zshrc
