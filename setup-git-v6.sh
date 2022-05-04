#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

# Problem solving commands

# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master

echo "####################################"
echo "Write your Github Username!"
echo "####################################"

read username

echo "####################################"
echo "Write your Github email!"
echo "####################################"

read email

#project=$(basename `pwd`)
#echo "-----------------------------------------------------------------------------"
#echo "this is project https://github.com/$username/"$project
#echo "-----------------------------------------------------------------------------"
git config --global pull.rebase false
git config --global user.name "$username"
git config --global user.email "$email"
#sudo git config --system core.editor nano
#git config --global credential.helper cache
#git config --global credential.helper 'cache --timeout=32000'
git config --global push.default simple

#git remote set-url origin git@github.com:$username/$project

tput setaf 1
echo "Everything set"

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
tput setaf 0