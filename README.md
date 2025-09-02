<!--
SPDX-FileCopyrightText: 2025 Kris Lamoureux <kris@lamoureux.io>
SPDX-License-Identifier: 0BSD
-->

## Dotfiles

Use GNU Stow to slow down your home directory listings with my
[accumulated sludge](https://web.archive.org/web/20141205101508/https://plus.google.com/+RobPikeTheHuman/posts/R58WgWwN9jp).

### Setup

1.  Clone into a subdirectory of `$HOME` and change into it

        git clone https://git.krislamo.org/kris/dotfiles.git ~/.dotfiles && \
        cd ~/.dotfiles

2.  List available configuration packages

        basename -a pkgs/*/

3.  Dry run `stow` with `-n` against configuration sets and verify output before
    running

        stow -n $(basename -a pkgs/*/)

    - Use `-nvv` for more verbose output.
