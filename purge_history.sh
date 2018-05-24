#!/bin/bash

#simple script to purge git repo history

git clone $1 deleteme
cd deleteme
rm -rf .git
git init
git add .
git commit -m "Initial commit"
git remote add origin $1
git push -u --force origin master
cd ..
rm -rf deleteme
