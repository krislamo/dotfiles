# Local system administration
alias 'editalias'='vim ~/.bash_aliases && . ~/.bash_aliases'
alias 'editssh'='vim ~/.ssh/config'
alias 'upgrade'='sudo apt update && sudo apt upgrade'
alias 'install'='sudo apt update && sudo apt install'
alias 'restartgui'='sudo service sddm restart'

# Vagrant shortcuts
alias 'vdup'='vagrant destroy -f && vagrant up'
alias 'vpro'='vagrant provision'
alias 'vssh'='ssh-add && vagrant ssh'
alias 'vup'='vagrant up'

# Change to project folder
alias 'sw'='cd /home/$USER/software && clear'

# Git shortcuts
alias 'gad'='git add . && git diff --cached'

# Color shift
alias 'night'='redshift -O 2500'
alias 'day'='redshift -x'

# SOCKS proxy over SSH
alias 'socks'='screen -dm ssh -D 1337 -q -C -N'
