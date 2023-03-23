#!/usr/bin/env bash

ABSPATH=$(cd "$(dirname "$0")"; pwd -P)

input="$ABSPATH/file-settings.txt"

while IFS= read -r line
do
  echo "Project URL is: $line"
done < "$input"

folderName=$(echo $line | cut -d/ -f5 | sed 's/\.git//')

echo "This project is located on: $folderName"

git clone $line
cd ./$folderName
git pull
