#!/bin/sh
#coding: utf-8
#author: Alrash

#get php, ide and web server software
#need set [archlinuxcn] without getting sql software

echo "" && echo “get php, phpstorm and nginx“
yaourt -S php php-cgi php-fpm phpstorm nginx

echo "" && echi "get phpstorm theme yka and save in home folder"
wget -b http://www.phpstorm-themes.com/sites/default/files/yka_0.icl -P /home -O yka_0.icls