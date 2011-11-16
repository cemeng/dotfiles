alias mvim='open -a macvim' 
alias be='bundle exec'
alias bq='cd ~/prj/rexroth/beqik2'
alias g='git st'
alias sp='be spec spec' #run all spec
alias prails='be pry -r ./config/environment'
alias gp="git log --pretty=format:'%h: %s (%an)'"
#PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '
export PATH=$PATH:/usr/local/flex/bin:$HOME/.rbenv/bin

# RBENV 
eval "$(rbenv init -)"
# RVM - no longer used
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export EDITOR='vim'
