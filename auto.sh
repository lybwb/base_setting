#!/usr/bin/env bash

SYSTEM=`uname -s`    #获取操作系统类型，我本地是linux
if [ $SYSTEM = "Linux" ] ; then     #如果是linux的话打印linux字符串
    echo "Linux"
elif [ $SYSTEM = "FreeBSD" ] ; then
    echo "FreeBSD"
elif [ $SYSTEM = "Solaris" ] ; then
    echo "Solaris"
elif [ $SYSTEM = "Darwin" ] ; then
    echo "Darwin"
else
    echo "What?"
fi     #ifend


# 安装系统依赖
sudo apt-get update
sudo apt-get install zsh
sudo apt-get install tmux
sudo apt-get install python-pip python-dev build-essential
sudo apt-get install ctags
sudo apt-get install supervisor
sudo apt-get install git python-setuptools libmysqlclient-dev libpython2.7-dev libjpeg8-dev libfreetype6-dev zlib1g-dev nginx
#sudo apt-get install mysql-server-5.6 #密码为root
sudo apt-get install language-pack-zh-hant language-pack-zh-hans

sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cp zshrc ~/.zshrc
