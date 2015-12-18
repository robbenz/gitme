#!/bin/bash -e

REPOS=( 
/Users/you/gitrepo1
/Users/you/gitrepo2
/Users/you/gitrepo3
/Users/you/gitrepo4
)

MOVE="Moving to next REPO... \n" 

echo what ya wanna do?

read input

if [ $input =  "commit" ]
then
    for i in "${REPOS[@]}"
    do
        cd "$i"
        tput setaf 6;pwd;tput sgr0 
        git add . -A
        git commit -m "autocommit backup point"
        tput setaf 2;echo  $MOVE;tput sgr0 
        sleep 1
    done 

elif [ $input = "push" ] || [ $input = "pull" ] || [ $input = "ftp push" ] || [ $input = "status" ]
    then
        for i in "${REPOS[@]}"
do
    cd "$i"
    tput setaf 6;pwd;tput sgr0 
    git $input 
    tput setaf 2;echo  $MOVE;tput sgr0 
    sleep 1
    done 
else tput setaf 1;echo "You have zero friends";tput sgr0 
fi
