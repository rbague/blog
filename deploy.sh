#!/bin/sh

set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo

# Go To Public folder
cd public

# commit and push new changes
git add .
git commit -m "rebuilding site $(date +'%d/%m/%Y %H:%M:%S')"
git push origin master
