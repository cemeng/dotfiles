# Ruby and Rails aliases
alias be="bundle exec"
alias sp=".bin/rspec spec"
alias prails="bin/pry -r ./config/environment"
alias rgm="rails generate migration"
alias dbm="rake db:migrate && rake spec:prepare"
alias fs="foreman start"

# BeQIK aliases
alias bq="cd ~/prj/rexroth/beqik2"
alias vg="sed -i "" "s/virgil/virgildev/g" flex/BeQIK2-app.xml"
alias uvg="git co -- flex/BeQIK2-app.xml"

# Git aliases
alias g="git st"
alias ga="git add"
alias gaa="git add --all"
alias gss="git stash save"
alias gsl="git stash list"
alias grc="git rebase --continue"
alias glog="git log --graph --pretty=format:'%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"
alias grpo="git remote prune origin"

# Projects
alias mec="cd ~/prj/mobileeyeclinic"

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/flex/bin:~/dotfiles/bin:/usr/local/sbin:~/prj/ansible/bin
export PATH=$PATH:~/prj/rexroth/beqik2/node_modules/.bin

# ANSIBLE
export PYTHONPATH=/Users/cemeng/prj/ansible/lib
export ANSIBLE_LIBRARY=/Users/cemeng/prj/ansible/library:/usr/share/ansible/
export MANPATH=/Users/cemeng/prj/ansible/docs/man

# CHRUBY
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.3.1

export EDITOR="vim"
export BUNDLER_EDITOR="mvim"

# Ruby GC tweaks for faster spec runs
# export RUBY_GC_MALLOC_LIMIT=1000000000
# export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.25
# export RUBY_HEAP_MIN_SLOTS=800000 # obsolte for ruby 2.1 apparently
# export RUBY_FREE_MIN=600000
# export LD_PRELOAD=/usr/lib/libtcmalloc_minimal.so

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home

# GRAILS
export SDKMAN_DIR="/Users/cemeng/.sdkman"
[[ -s "/Users/cemeng/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/cemeng/.sdkman/bin/sdkman-init.sh"
