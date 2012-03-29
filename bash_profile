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

# Git Bedazzling - http://railstips.org/blog/archives/2009/02/02/bedazzle-your-bash-prompt-with-git-info/
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return 
    echo "("${ref#refs/heads/}")"
}

DULL=0
BRIGHT=1
FG_WHITE=37
RED="\[\033[0;31m\]"
ESC="\033"
NORMAL="\[$ESC[m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[$ESC[${DULL};${FG_WHITE}m\]"
PS1="\w$YELLOW \$(parse_git_branch)$GREEN\$ $WHITE"
#PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '

export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH:/usr/local/flex/bin:$HOME/.rbenv/bin:$HOME/dotfiles/bin

# RBENV 
eval "$(rbenv init -)"

export EDITOR='vim'
export BUNDLER_BLACKLIST="metrical churn flay reek roodi rcov saikuro rails_best_practices"
