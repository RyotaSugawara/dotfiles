#!/bin/sh

BASEDIR="$HOME/dotfiles/vim"
if [ "$(readlink $HOME/.vimrc)" == $BASEDIR/vimrc ]; then
  ln -sf $BASEDIR/.vimrc $HOME/.vimrc
  echo "switch: Plug"
else
  ln -sf $BASEDIR/vimrc $HOME/.vimrc
  echo "switch: NeoBundle"
fi

