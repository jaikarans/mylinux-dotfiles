#!/bin/sh

USER_ID=`id -u`
echo $USER_ID

# check if script is not running as root
    if [  $USER_ID -ne 0 ]
then 
    echo 'Please run this file as rootgit '
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
echo '# Installing Netspeed Widget...'
cd plasma-applet-netspeed-widget
mkdir build
cd build
cmake -DCMAKE_INASTALL_PREFIX=/usr ..
make
sudo make install

# removing cloned repo from dotfiles repo
cd ../..
rm -rf plasma-applet-netspeed-widget

# login as normal user
sh su $SUDO_USER

# if repo alredy exist then delete it before cloning 
if [ -d "./apptitle-plasmoid" ] 
then
    rm -rf ./apptitle-plasmoid
fi

echo 
echo '==> Installing Application title...'
echo 
git clone https://gitlab.com/aleixq/apptitle-plasmoid.git
cd apptitle-plasmoid/org.communia.apptitle
plasmapkg2 -i .

#cleaing repo
cd ../..
rm -rf apptitle-plasmoid


# ###### Better inline clock ####### #

# remove if already exists
rm -rf ~/.local/share/plasma/plasmoids/org.kde.plasma.betterinlineclock

echo 
echo '==> Installing Better inline clock...'
echo 
git clone https://github.com/MarianArlt/kde-plasmoid-betterinlineclock.git
cd kde-plasmoid-betterinlineclock/org.kde.plasma.betterinlineclock
plasmapkg2 -i .
# cleaning repo
cd ../..
rm -rf kde-plasmoid-betterinlineclock