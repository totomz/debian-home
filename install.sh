#!/bin/bash
#find -maxdepth 1 -mindepth 1 -not -name .git -not -name README.md -not -name LICENSE -exec ln -sf /home/AD/tommaso.doninelli/debian-home/{} ../pippo/ \;

# Make a link on this folder to the home except for git stuff
find -maxdepth 1 -mindepth 1 -not -name .git -not -name README.md -not -name LICENSE -exec ln -sf ~/debian-home/{} ~ \;

# Update the bashrc
source ~/.bashrc
