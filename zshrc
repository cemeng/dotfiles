# Oh my ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export BREW_PREFIX="$(brew --prefix)"

# Git aliases
alias g="git status"
alias ga="git add"
alias gci="git commit"
alias gaa="git add --all"
alias gss="git stash save"
alias gsl="git stash list"
alias glog="git log --graph --pretty=format:'%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"
alias grpo="git remote prune origin"
alias gclean='git branch --merged | grep -Ev "(^\*|master|main|prod|prd|stg|uat|dev)" | xargs git branch -d'

export EDITOR="nvim"
export BUNDLER_EDITOR="nvim"

# Navigation
alias dot="cd ~/dotfiles"
alias dev="cd ~/dev"
alias reload="source ~/.zshrc"
alias notes="cd ~/dev/notes"

# Ops
alias tf="terraform"
alias tfi="tfswitch && tf init"
alias tfp="tf plan"
alias k="kubectl"
alias kx="kubectx"
alias ks="kubens"
alias gcal="gcloud auth list"
alias gcsa="gcloud config set account"

# PATH
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:~/dotfiles/bin
export PATH=$PATH:~/.local/bin

# Go
export GOROOT="$(brew --prefix golang)/libexec"
export GOPATH=$HOME/workspace/gocode
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Ruby
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
alias python="${BREW_PREFIX}/bin/python3"

# GCloud SDK
source /opt/homebrew/share/google-cloud-sdk/path.zsh.inc
source /opt/homebrew/share/google-cloud-sdk/completion.zsh.inc

# Required for Rails/Puma forking on macOS
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

