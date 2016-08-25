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
sudo apt-get install -y vim
sudo apt-get install -y zsh
sudo apt-get install -y tmux
sudo apt-get install -y python-pip python-dev build-essential
sudo apt-get install -y ctags
sudo apt-get install -y supervisor
sudo apt-get install -y git python-setuptools libmysqlclient-dev libpython2.7-dev libjpeg8-dev libfreetype6-dev zlib1g-dev nginx
#sudo apt-get install -y mysql-server-5.6 #密码为root
sudo apt-get install -y language-pack-zh-hant language-pack-zh-hans

sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv


echo 'export TERM=xterm-256color' >> ~/.bashrc
git clone https://github.com/r-lyb/base_setting.git
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp ~/base_setting/vimrc ~/.vimrc
cp ~/base_setting/tmux.conf ~/.tmux.conf
cp ~/base_setting/zshrc ~/.zshrc

vim +Bundleinstall +qall
sudo chsh -s /bin/zsh
