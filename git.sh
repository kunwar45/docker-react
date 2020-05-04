#!bin/bash

echo -n "Commit Message: "
read varCommit

# executing git commands
git add .

git commit -m "$varCommit"

git push -u origin master
