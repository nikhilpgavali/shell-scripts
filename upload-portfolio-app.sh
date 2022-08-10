#!/usr/bin/env bash

echo "$(tput setaf 1)"Deploying Portfolio Website to Netlify..."$(tput sgr0)"

# come back from current directory
cd

# Check the current working directory
# pwd

# Move to react-project
cd react-projects/nikhil-portfolio

# pwd

# list the files from folder
# ls -la

#check changed files using git
statuses=$(git status)

#print output
# echo "$statuses"

#check if there are files to commit
if [[ $statuses == *"nothing to commit"* ]]; then
    echo "$(tput setaf 2)"Nothing to commit"$(tput sgr0)"
else
    git add .
    git commit -m "commits added by bot"
    git push
fi
