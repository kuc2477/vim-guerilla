#!/bin/bash


# =====
# Paths
# =====

# shelter
SHELTER="$(pwd)/$(dirname $0)/.shelter"

# vim
GUERILLA_VIMRC="$(pwd)/$(dirname $0)/vimrc"
GUERILLA_VIMDIR="$(pwd)/$(dirname $0)/vim"
SYSTEM_VIMRC="$HOME/.vimrc"
SYSTEM_VIMDIR="$HOME/.vim"


# ============
# Infiltration 
# ============

git submodule update --init

if [ ! -f "$SYSTEM_VIMRC" && \
  "$(cat "$GUERILLA_VIMRC")" != \
  "$(cat "$SYSTEM_VIMRC")"]; then
  # create shelter if it doesn't exists
  if [ ! -d "$SHELTER" ]; then mkdir "$SHELTER"; fi

  # evacuate system vimrc
  mv "$SYSTEM_VIMRC" "$SHELTER/vimrc"

  # evacuate system vimdir if exists
  if [ -d "$SYSTEM_VIMDIR" ]; then 
    mv "$SYSTEM_VIMDIR" "$SHELTER/vim"; 
  fi

  # deploy guerilla to the system
  cp -r "$GUERILLA_VIMRC" "$HOME/.vimrc"
  cp -r "$GUERILLA_VIMDIR" "$HOME/.vim"
fi

# install plugins
vim +PluginInstall +qall
vim +PluginClean! +qall
