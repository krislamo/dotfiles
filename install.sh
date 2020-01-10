#!/bin/bash
DOTFILES="$(pwd)/.*[a-z]"
DATE=$(date '+%Y%m%d%H%M%S')

for FILE in $DOTFILES ; do
  BASEFILE=$(basename $FILE)

  # Exclude the repo's .git folder
  if [ "$BASEFILE" != ".git" ] ; then

    # If dotfile is not a symlink and exists then back it up
    if [ ! -L ~/$BASEFILE ] ; then
      read -p "Press [ENTER] to move ~/$BASEFILE to ~/$BASEFILE-$DATE"
      echo "mv ~/$BASEFILE ~/$BASEFILE-$DATE"
    fi

    # If dotfile doesn't exist then link it.
    if [ ! -e "~/$BASEFILE" ] ; then
      echo "ln -s $FILE ~/$BASEFILE"

    else
      echo "~/$BASEFILE is already a symlink. Nothing to do."

    fi

  fi

done
