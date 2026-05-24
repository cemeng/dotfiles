#!/bin/bash
set -e

# NOTE: inspired by https://github.com/thoughtbot/laptop/blob/master/mac

# Homebrew
if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if brew list | grep -Fq brew-cask; then
  echo "Uninstalling old Homebrew-Cask ..."
  brew uninstall --force brew-cask
fi

# CLI Tools
brew install openssl
brew install the_silver_searcher
brew install tree
brew install iterm2
brew install fzf # fuzzy search
brew install kubectx
brew install helm
brew install python
if ! command -v gcloud >/dev/null; then
  brew install --cask google-cloud-sdk
fi
brew install awscli
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# Softwares
brew install --cask alfred

# Programming language pre-req and package managers
brew install coreutils
brew install yarn

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Ruby
brew install chruby
brew install ruby-install

# Go
brew install go

# Dotfiles symlinks (-sf overwrites existing symlinks safely on re-runs)
ln -sf ~/dotfiles/agignore ~/.agignore
ln -sf ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/claude/skills ~/.claude/skills

##################### VIM ######################

brew install neovim

if [ ! -d "$HOME/.vim/sessions" ]; then
  mkdir -p ~/.vim/sessions
fi

if [ ! -d "$HOME/.config/nvim" ]; then
  mkdir -p ~/.config/nvim
fi
ln -sf ~/dotfiles/neovim-init ~/.config/nvim/init.vim


##################### GIT ######################

configured_name=$(git config -f ~/.gitconfig.local user.name 2>/dev/null)
configured_email=$(git config -f ~/.gitconfig.local user.email 2>/dev/null)

if [ -z "$configured_name" ]; then
  read -rp "Git name: " git_name
  git config -f ~/.gitconfig.local user.name "$git_name"
else
  echo "Git name already set: $configured_name"
fi

if [ -z "$configured_email" ]; then
  read -rp "Git email: " git_email
  git config -f ~/.gitconfig.local user.email "$git_email"
else
  echo "Git email already set: $configured_email"
fi

##########################################################
