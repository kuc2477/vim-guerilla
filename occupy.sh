#!/bin/bash


# =====
# Paths
# =====

# shelter
SHELTER="$(pwd)/$(dirname $0)/.shelter"

# vim
GUERILLA_VIMRC="$(pwd)/$(dirname $0)/vimrc"
GUERILLA_VIMDIR="$(pwd)/$(dirname $0)/vim"
USER_VIMRC="$HOME/.vimrc"
USER_VIMDIR="$HOME/.vim"


# ============
# Infiltration 
# ============

git submodule update --init

if [[ ! -f "$USER_VIMRC" || \
  "$(cat "$GUERILLA_VIMRC")" != \
  "$(cat "$USER_VIMRC")" ]]; then
  # create shelter if it doesn't exists
  if [[ ! -d "$SHELTER" ]]; then mkdir "$SHELTER"; fi

  # clear shelter
  rm -rf $SHELTER/*

  # evacuate current user's vimrc / vimdir if exists
  if [[ -f "$USER_VIMRC" ]]; then mv "$USER_VIMRC" "$SHELTER"; fi
  if [[ -d "$USER_VIMDIR" ]]; then mv "$USER_VIMDIR" "$SHELTER"; fi

  # deploy guerilla
  cp -rfi "$GUERILLA_VIMRC" "$HOME/.vimrc"
  cp -rfi "$GUERILLA_VIMDIR" "$HOME/.vim"

  # install plugins
  vim +PlugInstall +PlugClean! +qall
fi

