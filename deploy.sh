#!/bin/bash

# deploy.sh taken from end of this file.
# https://gohugo.io/tutorials/github-pages-blog/

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo 

# Go To Public folder
cd public
# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..
