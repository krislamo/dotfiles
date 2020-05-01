# Local system administration

# Alias management
alias 'editalias'='vim ~/.bash_aliases && . ~/.bash_aliases'
alias 'otheralias'='vim ~/.other_aliases && . ~/.bash_aliases'
alias 'viewalias'='view ~/.bash_aliases'
alias 'refreshalias'='source ~/.bash_aliases'

# SSH management
alias 'editssh'='vim ~/.ssh/config'

# System packages using apt
alias 'update'='sudo apt update'
alias 'upgrade'='sudo apt update && sudo apt upgrade'
alias 'install'='sudo apt update && sudo apt install'
alias 'remove'='sudo apt remove'

# Restart display manager
alias 'restartgui'='sudo service sddm restart'

# Power management
alias 'reboot'='sudo reboot'
alias 'shutdown'='sudo shutdown'

# Vagrant shortcuts
alias 'vdup'='vagrant destroy -f && vagrant up'
alias 'vpro'='vagrant provision'
alias 'vssh'='ssh-add && vagrant ssh'
alias 'vup'='vagrant up'

# Change to project folder
alias 'sw'='cd /home/$USER/software && clear'

# Git shortcuts
alias 'gad'='git add . && git diff --cached'
alias 'gdiff'='git diff'
alias 'status'='git status'
alias 'pull'='git pull --rebase'
alias 'merge'='git merge --ff-only'
alias 'upstream'='git push --set-upstream origin'
alias 'push'='git push'
alias 'branch'='git branch'
alias 'list'='git branch -a'
alias 'unstage'='git reset HEAD'
alias 'discard'='git checkout --'
alias 'log'='git log'
alias 'checkout'='git checkout'
alias 'commit'='git commit -S'
alias 'amend'='git commit -S --amend'
alias 'amendnew'='git commit -S --amend --date "`date -R`"'
alias 'fetch'='git fetch'
alias 'stash'='git stash'
alias 'resetb'='git reset --hard @{u}'

function gd() {
  git diff HEAD~$1
}

function rebase() {
  git rebase -i HEAD~$1
}

# Docker shortcuts
function inspect() {
  docker inspect "$1" | less
}

# Color shift
alias 'night'='redshift -P -O 2500'
alias 'day'='redshift -x'

# SOCKS proxy over SSH
alias 'socks'='screen -dm ssh -D 1337 -q -C -N'

# sshuttle proxy
#e.g. alias 'proxyhome'='proxy user hostdomain:22 192.168.1.0/24'
function proxy() {
  screen -dm sshuttle -v -r $1@$2 -x $2 ${@:2}; screen -r;
}

if [ -f ~/.other_aliases ]; then
  source ~/.other_aliases
fi
