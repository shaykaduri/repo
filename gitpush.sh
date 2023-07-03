#!/bin/bash

read -p "Enter filename to add ('.' = all): " ADD

git add $ADD

read -p "Enter message for commit: " message

echo "current branch = $(git branch --show-current)"


url=$1
git commit -m $message

if [ $# != 0 ]; then
  git remote add ${whoami} $url
  git push origin $(git branch --show-current)
fi
