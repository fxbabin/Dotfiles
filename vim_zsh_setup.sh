#!/bin/zsh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -L https://raw.githubusercontent.com/fxbabin/Dotfiles/master/.vimrc > ~/.vimrc
vim -E -c PluginInstall -c q -c q;
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh > install.sh; sh install.sh

# For MacOS

#rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && export PATH=$HOME/.brew/bin:$PATH && brew update && echo "export PATH=$HOME/.brew/bin:$PATH" >> ~/.zshrc
