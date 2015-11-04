#!/bin/bash


# =====
# Paths
# =====

# shelter
SHELTER="$(pwd)/$(dirname $0)/.shelter"

# vim
SYSTEM_VIMRC="$SHELTER/.vimrc"
SYSTEM_VIMDIR="$SHELTER/.vim"


# =======
# Retreat
# =======

if [ ! -f "$SYSTEM_VIMRC" ]; then
  # restore system vimrc if exists in the shelter
  mv "$SYSTEM_VIMRC" "$HOME/.vimrc"

  # restore system vimdir if exists in the shelter
  if [ -d "$SYSTEM_VIMDIR" ]; then
    mv "$SYSTEM_VIMDIR" "$HOME/.vim"
  fi
fi
