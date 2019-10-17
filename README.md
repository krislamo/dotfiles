## krislamo's dotfiles

### Installation

You may want to backup your current dotfiles:

```
mv ~/.bash_aliases ~/.bash_aliases-$(date '+%Y%m%d%H%M%S')
mv ~/.bashrc ~/.bashrc-$(date '+%Y%m%d%H%M%S')
mv ~/.vimrc ~/.vimrc-$(date '+%Y%m%d%H%M%S')
```

Then install symlinks in their place:
```
git clone git@github.com:krislamo/dotfiles.git && \
cd dotfiles && \
ln -nsf $(pwd)/.bash_aliases ~/.bash_aliases && \
ln -nsf $(pwd)/.bashrc ~/.bashrc && \
ln -nsf $(pwd)/.vimrc ~/.vimrc
```

#### Copyrights and Licenses
Copyright (C) 2019  Kris Lamoureux

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
