[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

rvm use 3.0.3

alias reload="source $HOME/.bash_profile"

alias pull="git pull"
alias push="git push"

alias reset="git reset --soft HEAD~1"
alias force="git push --force"

alias dev="yarn run dev"

alias com="git commit -m "
alias cod="OVERCOMMIT_DISABLE=1 git commit -m "
alias pus="git push"
alias pul="git pull"
alias add="git add ."
alias sta="git stash"
alias pop="git stash pop"

alias chec="git checkout"
alias cheb="git checkout -b"

alias profile="vim ~/.bash_profile"

alias QA="heroku run rails c --remote QA"
alias STAGING="heroku run rails c --remote STAGING"
alias PRODUCTION="heroku run rails c --remote PRODUCTION"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
