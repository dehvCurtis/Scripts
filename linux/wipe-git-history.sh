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


# better way to do this
# git checkout --orphan newBranch
# git add -A  # Add all files and commit them
# git commit
# git branch -D master  # Deletes the master branch
# git branch -m master  # Rename the current branch to master
# git push -f origin master  # Force push master branch to github
# git gc --aggressive --prune=all     # remove the old files