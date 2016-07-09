#!/bin/sh 
#coding: utf-8
#author: Alrash

cat ../conf.d/root/pacman_CN.conf | sudo tee -a /etc/pacman.conf 
echo "update pacman and get yaourt"
sudo pacman -Syy && sudo pacman -S yaourt archlinuxcn-keyring
