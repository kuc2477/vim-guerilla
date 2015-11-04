#!/bin/bash


git submodule update --init

# vimrcs
src_vimrc="`pwd`/`dirname $0`/vimrc"
dest_vimrc="$HOME/.vimrc"

if [[ ! -f "$HOME/.vimrc" || "`cat "$src_vimrc"`" != "`cat "$dest_vimrc"`"]]; then
  # create backup of system's current vim configurations
  mkdir .bak
  mv $HOME/.vimrc `pwd`/`dirname $0`/.bak/vimrc.bak
  mv $HOME/.vim `pwd`/`dirname $0`/.bak/vim.bak

  # deploy `vim-guerilla` to the system
  ln -sfi `pwd`/`dirname $0`/vimrc $HOME/.vimrc
  ln -sfi `pwd`/`dirname $0`/vim $HOME/.vim
fi

# install plugins
vim +PluginInstall +qall
vim +PluginClean! +qall
