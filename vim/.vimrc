syntax enable
colorscheme monokai
set number

set tabstop=2
set shiftwidth=2
set expandtab

set colorcolumn=80

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

