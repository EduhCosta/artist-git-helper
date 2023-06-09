#!/usr/bin/env bash

chmod +x ./import-project.sh
chmod +x ./get-updates.sh
chmod +x ./send-updates.sh

input="./file-settings.txt"

while IFS= read -r line
do
  echo "Project URL is: $line"
done < "$input"

folderName=$(echo $line | cut -d/ -f5 | sed 's/\.git//')

echo "This project is located on: $folderName"

git clone $line
cd ./$folderName
git pull
