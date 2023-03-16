#!/usr/bin/env bash

input="./file-settings.txt"

while IFS= read -r line
do
  echo "Project URL is: $line"
done < "$input"

folderName=$(echo $line | cut -d/ -f5 | sed 's/\.git//')

echo "This project is located on: $folderName"

# Access project folder
cd ./$folderName

# Delete previous branch
git branch -D "art/new-assets"

# Create a new branch to work
git checkout -b "art/new-assets"

# Add updates
git add .

# Commit changes
git commit -am "New artist updates"

# Send updates to Github
git push

sleep 30