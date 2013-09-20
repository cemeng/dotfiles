# Ruby and Rails aliases
alias be="bundle exec"
alias sp=".bin/rspec spec"
alias prails="bin/pry -r ./config/environment"
alias rgm="rails generate migration"
alias dbm="rake db:migrate && rake spec:prepare"
alias fs="be foreman start"

# BeQIK aliases
alias bq="cd ~/prj/rexroth/beqik2"
alias vg="sed -i "" "s/virgil/virgildev/g" flex/BeQIK2-app.xml"
alias uvg="git co -- flex/BeQIK2-app.xml"
alias lndr="bq && ln -s /Volumes/BRAUDWF/BRAUPUBLISH drawings"

# Git aliases
alias g="git st"
alias ga="git add"
alias gaa="git add --all"
alias gss="git stash save"
alias gsl="git stash list"
alias grc="git rebase --continue"
alias glog="git log --graph --pretty=format:'%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"
alias gorg="git br -r|grep origin"
alias grpo="git remote prune origin"

# export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH:/usr/local/flex/bin:$HOME/.rbenv/bin:$HOME/dotfiles/bin:/usr/local/sbin
export PATH=/Users/cemeng/.rbenv/shims:/Applications/MacVim.app/Contents/MacOS:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/flex/bin:/Users/cemeng/.rbenv/bin:/Users/cemeng/dotfiles/bin:/usr/local/sbin

# RBENV
eval "$(rbenv init -)"

export EDITOR="vim"
export BUNDLER_EDITOR="mvim"
export BUNDLER_BLACKLIST="metrical churn flay reek roodi rcov saikuro rails_best_practices"

alias rake="noglob rake"

# Ruby GC tweaks for faster spec runs
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.25
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_FREE_MIN=600000
export LD_PRELOAD=/usr/lib/libtcmalloc_minimal.so
