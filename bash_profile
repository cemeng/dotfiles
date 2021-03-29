# Git aliases
alias g="git status"
alias ga="git add"
alias gci="git commit"
alias gaa="git add --all"
alias gss="git stash save"
alias gsl="git stash list"
alias glog="git log --graph --pretty=format:'%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"
alias grpo="git remote prune origin"

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/dotfiles/bin:/usr/local/sbin

# Homebrew to add its path to $PATH
if [ -d "/opt/homebrew" ]
then
  # On Mac M1
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/usr/local/Homebrew/bin/brew shellenv)"
fi

export EDITOR="vim"
export BUNDLER_EDITOR="mvim"

# Aliases
alias dot="cd ~/dotfiles"
alias dev="cd ~/dev"
alias ops="cd ~/ops"
alias reload="source ~/.bash_profile"

# ScentreGroup Dev
alias is="cd ~/dev/identity_service"
alias ic="cd ~/dev/identity_client"
alias a0="cd ~/dev/auth0"
alias ppp="cd ~/dev/partner_portal"
alias tes="cd ~/dev/transactional-email-service"

# ScentreGroup Ops
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugins"
export VAULT_ADDR="https://vault.scentregroup.cloud"
alias tf="terraform"
alias inf="cd ~/ops/infrastructure"
alias tfi="tf init"
alias tfp="tf plan"
alias k="kubectl"
alias kx="kubectx"
alias kn="kubens"
alias gcal="gcloud auth list"
alias gcsa="gcloud config set account"

source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# alias python=/usr/local/bin/python3
alias python=/opt/homebrew/bin/python3

# GOLANG
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/workspace/gocode
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Ruby and Rails aliases
alias be="bundle exec"
alias sp="SKIP_COVERAGE=true bin/rspec"
alias prails="pry -r ./config/environment"
alias dbm="rake db:migrate && rake spec:prepare"

# CHRUBY
# source /usr/local/share/chruby/chruby.sh
# source /usr/local/share/chruby/auto.sh
# chruby ruby-2.5.3 # scentregroup
