#!/bin/bash

OLD_ORIGIN=$(git config --get remote.origin.url)

git remote set-url origin git@github.com:OSU-OS2-S23/JOS-Labs.git

git fetch


git remote set-url origin $OLD_ORIGIN

git checkout master
git push


for branch in lab1 lab2 lab3 lab4
do
  git checkout $branch
  git push
done
