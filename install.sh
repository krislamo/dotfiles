#!/bin/bash

# This script loops through files in this repository, creating symlinks in your
# home directory targeting here. It will prompt you to backup regular files and
# replace broken symlinks but will ignore good symlinks regardless of their
# target.

DOTFILES="$(pwd)/.*[a-z]"

for FILE in $DOTFILES ; do
  BASEFILE=$(basename $FILE)
  NEWLINK=0

  # Exclude the repo's .git folder
  if [ "$BASEFILE" != ".git" ]; then

    # If basefile is a link
    if [ -L ~/$BASEFILE ]; then
      # If basefile is not a file, and therefore is a broken symlink
      if [ ! -f ~/$BASEFILE ]; then
        read -p "Press [ENTER] to replace broken symlink ~/$BASEFILE. CTRL+C aborts"
        rm ~/$BASEFILE
        NEWLINK=1
      else
        echo "~/$BASEFILE is already linked."
      fi
    # If basefile is a regular file
    elif [ -f ~/$BASEFILE ]; then
      DATE=$(date '+%Y%m%d%H%M%S')
      read -p "Press [ENTER] to move ~/$BASEFILE to ~/$BASEFILE-$DATE. CTRL+C aborts"
      mv ~/$BASEFILE ~/$BASEFILE-$DATE
      NEWLINK=1
    else
      echo "Nothing in location ~/$BASEFILE"
      NEWLINK=1
    fi

    # Create a new symlink
    if [ $NEWLINK -eq 1 ] ; then
      echo "Creating new link to $(pwd)/$BASEFILE from" ~
      ln -s $(pwd)/$BASEFILE ~/$BASEFILE
    fi

  fi
done

. ~/.bashrc
