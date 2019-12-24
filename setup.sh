#!/bin/sh

echo "Setup git..."
git config --global user.name "Leonid Zharikov"
git config --global user.email leon.zharikov@gimail.com

git config --list --global

ssh-keygen -t rsa -b 4096 -C "leon.zharikov@gimail.com" -f $HOME/.ssh/id_rsa -N ''

echo "Setup audio..."
amixer -c 1 set 'Master' 57
amixer -c 1 set 'HP/Speaker Auto Detect' on
amixer -c 1 set 'Enable OutFX' off
sudo alsactl store
