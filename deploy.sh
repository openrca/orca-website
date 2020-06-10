#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mRebuilding website...\033[0m\n"

# Build the project
hugo -s ./src -d ../public

# Go To Public folder
cd public

# Add changes to git
git add .

# Commit changes
msg="Rebuild website $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos
git push origin master
