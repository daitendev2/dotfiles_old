#!/bin/sh
dir=`echo ${PWD##*/}`
# zsh
sudo yum -y install zsh
sudo chsh -s /bin/zsh
# tmux
sudo yum -y install tmux
# dein vim
mkdir -p ~/${dir}/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git ~/${dir}/dein/repos/github.com/Shougo/dein.vim
