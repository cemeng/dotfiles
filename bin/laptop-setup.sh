#!/bin/bash

# NOTE: inspired by https://github.com/thoughtbot/laptop/blob/master/mac

# Homebrew
if ! command -v brew >/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if brew list | grep -Fq brew-cask; then
  echo "Uninstalling old Homebrew-Cask ..."
  brew uninstall --force brew-cask
fi

# Unix
brew install openssl
brew install the_silver_searcher
brew install tree
brew install iterm2
brew install fzf # fuzzy search
brew install kubectx
brew install helm
brew install python
brew install --cask google-cloud-sdk

# Softwares
brew install alfred

# Programming language pre-req and package managers
brew install coreutils
brew install yarn

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Ruby
brew install chruby
brew install ruby-install

# Go
brew install go

# Dotfiles
cp ~/dotfiles/ackrc ~/.ackrc
cp ~/dotfiles/agignore ~/.agignore
# TODO: fix below
# cp ~/dotfiles/bash_profile ~/.bash_profile
cp ~/dotfiles/gitconfig ~/.gitconfig
cp ~/dotfiles/vimrc ~/.vimrc
cp ~/dotfiles/zshrc ~/.zshrc

##################### VIM ######################

# Vims
brew install macvim
brew install neovim

if [ ! -d "$HOME/.vim/sessions" ]; then
  mkdir -p ~/.vim/sessions
fi

# Vim Neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm ./install.sh

# Sharing Vim config to NeoVim
if [ ! -d "$HOME/.config/nvim" ]; then
  mkdir -p ~/.config/nvim
fi
cp ~/dotfiles/neovim-init ~/.config/nvim/init.vim

################################################
