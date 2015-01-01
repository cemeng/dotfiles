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
alias rbq='"/Applications/Adobe Flash Builder 4.6/sdks/4.6.0/bin/adl" -runtime "/Applications/Adobe Flash Builder 4.6/sdks/4.6.0/runtimes/air/mac" "/Users/cemeng/prj/rexroth/beqik2-workspace/bin-debug/BeQIK2-app.xml" /Users/cemeng/prj/rexroth/beqik2-workspace/bin-debug -- -server=beqik2au.dev:5000 -appname=virgil'

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

# Projects
alias actsky="cd ~/prj/activ-sky"
alias admc="cd ~/prj/admin-console"

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/flex/bin:~/dotfiles/bin:/usr/local/sbin:~/prj/ansible/bin

# ANSIBLE
export PYTHONPATH=/Users/cemeng/prj/ansible/lib
export ANSIBLE_LIBRARY=/Users/cemeng/prj/ansible/library:/usr/share/ansible/
export MANPATH=/Users/cemeng/prj/ansible/docs/man

# CHRUBY
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.1.5

export EDITOR="vim"
export BUNDLER_EDITOR="mvim"

# Ruby GC tweaks for faster spec runs
# export RUBY_GC_MALLOC_LIMIT=1000000000
# export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.25
# export RUBY_HEAP_MIN_SLOTS=800000 # obsolte for ruby 2.1 apparently
# export RUBY_FREE_MIN=600000
# export LD_PRELOAD=/usr/lib/libtcmalloc_minimal.so
