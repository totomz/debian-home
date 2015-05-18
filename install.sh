#!/bin/bash
#find -maxdepth 1 -mindepth 1 -not -name .git -not -name README.md -not -name LICENSE -exec ln -sf /home/AD/tommaso.doninelli/debian-home/{} ../pippo/ \;

# Make a link on this folder to the home except for git stuff
find -maxdepth 1 -mindepth 1 -not -name .git -not -name README.md -not -name LICENSE -not -name install.sh -exec ln -sf ~/debian-home/{} ~ \;

# Update the bashrc
source ~/.bashrc

# Registering git
git config user.email "tom@tomtom.net"
git config user.name "totomz"

# Download some cool stuff (vim and git should be already here)
apps=" vim dnsutils mlocate"
echo "Can I install $apps for you? (y|N)"
read instApp
if [ "$instApp" == 'y' ]
then
    sudo apt-get install ${apps}
fi

# Download Xbindkeys (to control Spotify)
echo "Install xbindkeys? (y|N)"
read doInst
if [ "$doInst" == 'y' ] 
then
    sudo apt-get install xbindkeys
    sudo apt-get install xbindkeys-config
    sudo apt-get install xvkbd
    xbindkeys
fi

