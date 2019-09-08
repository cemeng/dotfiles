# Ruby and Rails aliases
alias be="bundle exec"
alias sp="SKIP_COVERAGE=true be rspec"
alias prails="pry -r ./config/environment"
alias dbm="rake db:migrate && rake spec:prepare"

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

# CHRUBY
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.5.3 # scentregroup

export EDITOR="vim"
export BUNDLER_EDITOR="mvim"

# Aliases
alias dot="cd ~/dotfiles"
alias prj="cd ~/prj"

# Scentre
alias is="cd ~/prj/identity_service"
alias ic="cd ~/prj/identity_client"
