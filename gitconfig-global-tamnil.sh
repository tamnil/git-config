#!/bin/bash
echo "*********WARNING*************"
echo "Your current configuration:"
echo 
git config --global --list
echo
echo " ***** Execute the following to git global:*****"
echo "
git config --global core.fscache true
git config --global core.preloadindex true
git config --global diff.mnemonicprefix true
git config --global gc.auto 256
git config --global merge.stat true
git config --global rerere.enabled true
git config --global user.email "tamnil@gmal.com"
git config --global user.name "Tamnil Saito Junior"
"

read -p "Are you sure?[n] " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]
then
git config --global core.fscache true
git config --global core.preloadindex true
git config --global diff.mnemonicprefix true
git config --global gc.auto 256
git config --global merge.stat true
git config --global rerere.enabled true
git config --global user.email "tamnil@gmal.com"
git config --global user.name "Tamnil Saito Junior"
####### list configuration:
echo
echo "**************Final Configuration*********"

git config --global --list
else
    echo "Aborted"
fi

