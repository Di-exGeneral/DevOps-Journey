# Git hooks

Git hooks are automation scripts that are triggered when something happen

This scripts are found in .git/hooks/ in your project

The first script i wrote is pre-commit, which checks whether the commit message is empty or not, 
and return an error message if it's empty or only just contains whitespace

`commit_msg=$(cat "$1" | tr -d '[:space:]')` reads the message area and assign it to the variable

`if [ -z "$commit_msg" ]; then` is responsible for verifying if it's not empty using "-z"
(true if string is empty)

