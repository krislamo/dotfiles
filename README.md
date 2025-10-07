<!--
SPDX-FileCopyrightText: 2025 Kris Lamoureux <kris@lamoureux.io>
SPDX-License-Identifier: 0BSD
-->

## Dotfiles

Use GNU Stow (or xstow) to slow down your home directory listings with my
[accumulated sludge](https://web.archive.org/web/20141205101508/https://plus.google.com/+RobPikeTheHuman/posts/R58WgWwN9jp).

### Setup

1.  Create the `~/.local` directory (if it doesn't already exist)

        mkdir -p ~/.local

2.  Clone the repository

        git clone https://git.krislamo.org/kris/dotfiles.git ~/.local/dotfiles

3.  Navigate to the repository's directory

        cd ~/.local/dotfiles

4.  Dry run `stow` with `-n` against configuration sets and verify, e.g.,

        stow -n vim

### Using xstow

On systems without GNU Stow, you can build and use `xstow` as an alternative for
managing symlinks. Build a statically linked binary using
[xstow-builder](https://git.krislamo.org/kris/xstow-builder), then copy it to
`~/.local/bin/` on your target system. You need to specify the target directory
`-t` because `xstow` does not use the `.stowrc` file.

#### Bootstrapping

If you copy `xstow` to `~/.local/bin` before stowing the `bash` package, you'll
hit a bootstrapping problem. You need `xstow` in your `$PATH` to easily use it,
but you need the updated `.bashrc` (from the `bash` package) to add
`~/.local/bin` to your `$PATH` in the first place. To break this cycle, invoke
`xstow` directly with its full path for the initial setup.

1.  Place the `xstow` binary at `~/.local/bin/xstow`
2.  Sideline your `.bashrc` file

        cp ~/.bashrc ~/.bashrc.bak

3.  Inside the repository, dry run `xstow` ( `-n` ) using the full path

        ~/.local/bin/xstow -t "$HOME" -v 2 -n bash

    - Remove `-n` only once you are sure it will work as intended
    - After stowing the `bash` package, start a new shell or source `.bashrc`

### Licensing

This project follows the [REUSE](https://reuse.software) specification.

Efforts have been made to include SPDX license headers and a LICENSES directory
with the appropriate licenses, since not all configurations in these dotfiles
are original.

Please ensure that the repository passes the `reuse lint` check.
