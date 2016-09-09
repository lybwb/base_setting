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

sudo locale-gen zh_CN.UTF-8

# 安装系统依赖
sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install -y language-pack-zh-hant language-pack-zh-hans
sudo apt-get install -y vim
sudo apt-get install -y zsh
sudo apt-get install -y tmux
sudo apt-get install -y tmux=2.0-1~ppa1~t
sudo apt-get install -y git
sudo apt-get install -y nginx
sudo apt-get install -y ctags
sudo apt-get install -y build-essential libncurses5-dev libffi-dev exuberant-ctags cmake libevent-dev
sudo apt-get install -y autoconf libtool pkg-config idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus libgle3
sudo apt-get install -y python-pip python-dev python-setuptools libmysqlclient-dev libpython2.7-dev libjpeg8-dev libfreetype6-dev zlib1g-dev python-qt4 python-qt4-gl python-opengl python-imaging python-pyrex python-pyside.qtopengl 
#sudo apt-get install -y mysql-server-5.6 #密码为root
sudo apt-get autoremove

sudo pip install --upgrade pip


echo 'export TERM=xterm-256color' >> ~/.bashrc
git clone https://github.com/r-lyb/base_setting.git
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp ~/base_setting/vimrc ~/.vimrc
cp ~/base_setting/tmux.conf ~/.tmux.conf
cp ~/base_setting/zshrc ~/.zshrc
rm -rf base_setting

vim +BundleInstall +qall 2&> /dev/null

# update python 2.7.x
sudo apt-get install software-properties-common python-software-properties
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install python2.7
sudo apt-get autoremove

# sudo chsh -s /bin/zsh
# sudo groupadd megvii
# sudo usermod -a -G megvii label
# sudo usermod -a -G www-data label

