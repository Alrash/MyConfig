#!/bin/sh

echo "get image viewer, chrome, music player, media player and so on"
yaourt -S google-chrome ristretto gimp deadbeef shadowsocks vlc fcitx-im fcitx-configtool fcitx-googlepinyin wps-office ttf-wps-fonts breeze-snow-cursor-theme numix-themes-archblue-git unzip zip unrar rar p7zip

echo '' && echo 'get shadowsocks.json(need password)'
#password 最长的那个
wget http://www.alrash.ga/download/shadowsocks.zip &&
    echo "please input password to unzip" &&
    unzip shadowsocks.zip

#如果文件存在则配置shadowsocks，并设置开机启动
if [ -f shadowsocks.json ]; then
    echo -e "start shadowsocks\n"
    echo "need modfiy config file?(y/n)"
    read $NeedModfiy
    if [ $NeedModfiy=="Y" ] || [ $NeedModfiy=="y" ]; then
        vim shadowsocks.json
    fi
    sudo \mv shadowsocks.json /etc/shadowsocks/
    sudo systemctl start shadowsocks@shadowsocks
    sudo systemctl enable shadowsocks@shadowsocks
    echo -e "ok, shadowsocks has started!\n"
fi

rm -rf shadowsocks.zip