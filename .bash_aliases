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
alias 'fetch'='git fetch'

# Color shift
alias 'night'='redshift -P -O 2500'
alias 'day'='redshift -x'

# SOCKS proxy over SSH
alias 'socks'='screen -dm ssh -D 1337 -q -C -N'

source ~/.other_aliases
