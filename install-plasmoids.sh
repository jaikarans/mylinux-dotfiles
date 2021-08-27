#!/bin/sh

# ###### Application title ###### #

# if repo alredy exist then delete it before cloning 
if [ -d "./apptitle-plasmoid" ] 
then
    rm -rf ./apptitle-plasmoid
fi

# remove if already exists
rm -rf ~/.local/share/plasma/plasmoids/org.communia.apptitle

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

# if repo alredy exist then delete it before cloning 
if [ -d "./kde-plasmoid-betterinlineclock" ] 
then
    rm -rf ./kde-plasmoid-betterinlineclock
fi

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