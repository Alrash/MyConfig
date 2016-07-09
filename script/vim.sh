#!/bin/sh
#coding: utf-8

#get vim and powerline fonts
echo "" && echo "get vim and powerline fonts"
sudo pacman -S powerline-fonts otf-droid-sans-mono-powerline-git vim vim-airline vim-runtime && wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x && \cp ../conf.d/home/.vimrc ~

