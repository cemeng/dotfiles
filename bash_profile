# Ruby and Rails aliases
alias be='bundle exec'
alias sp='be rspec spec' #run all spec
alias prails='be pry -r ./config/environment'
alias restart='powify server restart'

# BeQIK aliases
alias bq='cd ~/prj/rexroth/beqik2'
alias vg="sed -i '' 's/virgil/virgildev/g' flex/BeQIK2-app.xml"
alias uvg="git co -- flex/BeQIK2-app.xml"
alias lndr='bq && ln -s /Volumes/BRAUDWF/BRAUPUBLISH drawings'

# Git aliases
alias g='git st'
alias gp="git log --pretty=format:'%h: %s (%an)'"
alias gss='git stash save'
alias gd='git df'

export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH:/usr/local/flex/bin:$HOME/.rbenv/bin:$HOME/dotfiles/bin

# RBENV 
eval "$(rbenv init -)"

export EDITOR='vim'
export BUNDLER_BLACKLIST="metrical churn flay reek roodi rcov saikuro rails_best_practices"
