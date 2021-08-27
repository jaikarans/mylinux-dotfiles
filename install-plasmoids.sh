#!/bin/sh

USER_ID=`id -u`
echo $USER_ID

# check if script is not running as root
    if [  $USER_ID -ne 0 ]
then 
    echo 'please run this file as root'
    echo 'sudo sh install-plasmoids.sh'
    exit
fi

# installing cmake for Netspeed Widget
pacman -S --noconfirm cmake extra-cmake-modules

echo
echo '==> Installing plasmoids...'
echo 

# if repo alredy exist then delete it before cloning 
if [ -d "./plasma-applet-netspeed-widget" ] 
then
    rm -rf ./plasma-applet-netspeed-widget
fi

git clone https://github.com/dfaust/plasma-applet-netspeed-widget.git
echo 
echo '# installing Netspeed Widget...'
cd plasma-applet-netspeed-widget
mkdir build
cd build
cmake -DCMAKE_INASTALL_PREFIX=/usr ..
make
sudo make install

#removeing cloned repo from dotfiles repo
cd ../..
rm -rf plasma-applet-netspeed-widget