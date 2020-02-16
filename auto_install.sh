#!/bin/zsh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -L https://raw.githubusercontent.com/fxbabin/Dotfiles/master/.vimrc > ~/.vimrc
vim -E -c PluginInstall -c q -c q; zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh > install.sh; sh install.sh
