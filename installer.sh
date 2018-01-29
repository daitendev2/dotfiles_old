#!/bin/sh
dir=`echo ${PWD##*/}`
# tmux
yum install -y tmux
# dein vim
mkdir -p ~/${dir}/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git ~/${dir}/dein/repos/github.com/Shougo/dein.vim
