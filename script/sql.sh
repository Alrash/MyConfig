#!/bin/sh
#coding: utf-8
#author: Alrash

sudo pamcan -S mariadb mariadb-clients mysql-workbench
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

echo "input your SQL password:"
read $passwd
mysqladmin -u root password $passwd
