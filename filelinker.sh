#!/bin/sh
dir=`echo ${PWD##*/}`
ln -sf ~/${dir}/dein ~/.vim
ln -sf ~/${dir}/.vimrc ~/.vimrc
ln -sf ~/${dir}/.tmux.conf ~/.tmux.conf
ln -sf ~/${dir}/.gitconfig ~/.gitconfig
