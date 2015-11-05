#!/bin/bash


# =====
# Paths
# =====

# shelter
SHELTER="$(pwd)/$(dirname $0)/.shelter"

# vim
USER_VIMRC="$SHELTER/.vimrc"
USER_VIMDIR="$SHELTER/.vim"
GUERILLA_VIMRC="$HOME/.vimrc"
GUERILLA_VIMDIR="$HOME/.vim"


# =======
# Retreat
# =======

if [ -d "$SHELTER" ]; then
  # remove guerillas
  if [ -f "$GUERILLA_VIMRC" ]; then rm -f "$GUERILLA_VIMRC"; fi
  if [ -d "$GUERILLA_VIMDIR" ]; then rm -rf "$GUERILLA_VIMDIR"; fi

  # restore current user's vimrc / vimdir if exists in the shelter
  if [ -f "$USER_VIMRC" ]; then mv -i "$USER_VIMRC" "$HOME/.vimrc"; fi
  if [ -d "$USER_VIMDIR" ]; then mv -i "$USER_VIMDIR" "$HOME/.vim"; fi

  # destroy shelter
  rm -rf "$SHELTER"
fi
