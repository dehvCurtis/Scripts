#!/bin/sh

# this script pulls the latest, 
# removes history locally, recreates 
# the repo, commits to overwrite the 
# history

# add git repo as variable
GIT_REPO=""

cd $GIT_REPO
git pull
rm -rf .git
git init
git add .
git commit -m 'Initial Commit'
git remote add origin $GIT_REPO
git push -u --force origin master