# Ruby and Rails aliases
alias be='bundle exec'
alias sp='.bin/rspec spec' #run all spec
alias prails='bin/pry -r ./config/environment'
alias restart='powify server restart'
alias rgm='rails generate migration'
alias dbm='rake db:migrate && rake spec:prepare'

# BeQIK aliases
alias bq='cd ~/prj/rexroth/beqik2'
alias vg="sed -i '' 's/virgil/virgildev/g' flex/BeQIK2-app.xml"
alias uvg="git co -- flex/BeQIK2-app.xml"
alias lndr='bq && ln -s /Volumes/BRAUDWF/BRAUPUBLISH drawings'

# Git aliases
alias g='git st'
alias ga='git add'
alias gaa='git add --all'
alias gp="git log --pretty=format:'%h: %s (%an)'"
alias gss='git stash save'
alias gd='git diff'
alias grc='git rebase --continue'

# export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH:/usr/local/flex/bin:$HOME/.rbenv/bin:$HOME/dotfiles/bin:/usr/local/sbin
export PATH=/Users/cemeng/.rbenv/shims:/Applications/MacVim.app/Contents/MacOS:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/flex/bin:/Users/cemeng/.rbenv/bin:/Users/cemeng/dotfiles/bin:/usr/local/sbin

# RBENV
eval "$(rbenv init -)"

export EDITOR='mvim'
export BUNDLER_BLACKLIST="metrical churn flay reek roodi rcov saikuro rails_best_practices"

alias rake='noglob rake'
