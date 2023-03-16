#!/usr/bin/env bash

input="./file-settings.txt"

while IFS= read -r line
do
  echo "Project URL is: $line"
done < "$input"

folderName=$(echo $line | cut -d/ -f5 | sed 's/\.git//')

echo "This project is located on: $folderName"

cd ./$folderName
git rebase -i origin/main

