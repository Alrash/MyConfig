#!/bin/sh
#coding: utf-8
#author: Alrash

#get php, ide and web server software
#need set [archlinuxcn] without getting sql software

echo "" && echo “get php, phpstorm and nginx“
yaourt -S php php-cgi php-fpm phpstorm nginx
