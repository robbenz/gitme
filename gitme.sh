#!/bin/bash -e

REPOS=( 
/Users/your/git/repo1
/Users/your/git/repo2
/Users/your/git/repo3
/Users/your/git/repo4
/Users/your/git/repo5
)

MOVE="Moving to next REPO... \n" 

echo what ya wanna do?

read input

if [ $input =  "commit" ]
then
    for i in "${REPOS[@]}"
    do
        cd $i
        tput setaf 6;pwd;tput sgr0 
        git add . -A
        git commit -m "autocommit backup point"
        tput setaf 2;echo  $MOVE;tput sgr0 
        sleep 1
    done 

else 
for i in "${REPOS[@]}"
do
    cd $i
    tput setaf 6;pwd;tput sgr0 
    git $input 
    tput setaf 2;echo  $MOVE;tput sgr0 
    sleep 1
    done 
fi
