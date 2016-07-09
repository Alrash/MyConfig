#!/bin/sh

echo "" && echo "get base system package without base, base-devel and desktop environment"
sudo pacman -S networkmanager network-manager-applet alsa-utils bumblebee nvidia nvidia-utils nvidia-settings bbswtich numix-themes xfce4-screenshooter xfce4-whiskermenu-plugin openssh git xclip leafpad

echo "" && echo "set git config and get ssh key"
git config --global user.name "alrash"
git config --global user.email "kasukuikawai@gmail.com"
ssh-keygen

echo "" && echo "enable bumblebeed and NetworkManager"
sudo systemctl enable {bumblebeed,NetworkManager}

echo ""
echo "please add your username to the audio group and bumblebeed group"
echo "    like sudo gpasswd -a alrash {audio,bumblebeed}"
