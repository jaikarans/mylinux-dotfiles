#!/bin/bash

# ###### Application title ###### #

# if repo alredy exist then delete it before cloning 
if [ -d "./apptitle-plasmoid" ] 
then
    rm -rf ./apptitle-plasmoid
fi

# remove if already exists
rm -rf ~/.local/share/plasma/plasmoids/org.communia.apptitle

printf '\33[0;32m \n\n===> Installing Application title... \n \33[0m'

git clone https://gitlab.com/aleixq/apptitle-plasmoid.git
cd apptitle-plasmoid/org.communia.apptitle
plasmapkg2 -i .
#cleaing repo
cd ../..
rm -rf apptitle-plasmoid


# ###### Better inline clock ####### #

# if repo alredy exist then delete it before cloning 
if [ -d "./kde-plasmoid-betterinlineclock" ] 
then
    rm -rf ./kde-plasmoid-betterinlineclock
fi

# remove if already exists
rm -rf ~/.local/share/plasma/plasmoids/org.kde.plasma.betterinlineclock

printf '\33[0;32m \n\n ===> Installing Better inline clock... \n \33[0m'
 
git clone https://github.com/MarianArlt/kde-plasmoid-betterinlineclock.git
cd kde-plasmoid-betterinlineclock/org.kde.plasma.betterinlineclock
plasmapkg2 -i .
# cleaning repo
cd ../..
rm -rf kde-plasmoid-betterinlineclock


# ###### Latte separator ####### #

# if repo alredy exist then delete it before cloning 
if [ -d "./applet-latte-separator" ] 
then
    rm -rf ./applet-latte-separator
fi

# remove if already exists
rm -rf ~/.local/share/plasma/plasmoids/org.kde.latte.separator

printf '\33[0;32m \n\n ===> Installing Latte separator... \n \33[0m'
 
git clone https://github.com/psifidotos/applet-latte-separator.git
cd applet-latte-separator
plasmapkg2 -i .
# cleaning repo
cd ..
rm -rf applet-latte-separator

