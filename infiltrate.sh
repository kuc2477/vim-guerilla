  git submodule update --init
  
  # create backup of system's current vim configurations
  mkdir .bak
  cp $HOME/.vimrc `pwd`/`dirname $0`/.bak/vimrc.bak
  cp $HOME/.vim `pwd`/`dirname $0`/.bak/vim.bak
  
  # deploy `vim-guerilla` to the system
  ln -sfi `pwd`/`dirname $0`/vimrc $HOME/.vimrc
  ln -sfi `pwd`/`dirname $0`/vim $HOME/.vim
  vim +PluginInstall +qall
  vim +PluginClean! +qall
