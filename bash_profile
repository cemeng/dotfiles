# Ruby and Rails aliases
alias be="bundle exec"
alias sp="SKIP_COVERAGE=true be rspec"
alias spr="SKIP_COVERAGE=true be spring rspec"
alias prails="bin/pry -r ./config/environment"
alias rgm="rails generate migration"
alias dbm="rake db:migrate && rake spec:prepare"
alias fs="foreman start"

# Git aliases
alias g="git status"
alias ga="git add"
alias gci="git commit"
alias gaa="git add --all"
alias gss="git stash save"
alias gsl="git stash list"
alias grc="git rebase --continue"
alias glog="git log --graph --pretty=format:'%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"
alias grpo="git remote prune origin"

# Fairfax
alias hg="cd ~/prj/coreplatforms-hagrid"
alias cn="cd ~/prj/china-newsletters"
alias k="kubectl"
alias kgp="kubectl get pod"
alias krm="kubectl delete"

# Others
alias mec="cd ~/prj/mobileeyeclinic"

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/dotfiles/bin:/usr/local/sbin

# CHRUBY
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.1.8

export EDITOR="vim"
export BUNDLER_EDITOR="mvim"

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home
export JAVA_HOME=`/usr/libexec/java_home`

# GRAILS
export SDKMAN_DIR="/Users/cemeng/.sdkman"
[[ -s "/Users/cemeng/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/cemeng/.sdkman/bin/sdkman-init.sh"

# GOLANG
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

eval "$(direnv hook bash)"
