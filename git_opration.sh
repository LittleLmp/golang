#!/bin/bash

# function must be  in the top
function git_commands()
{
    echo $1;
    git add $1
    echo $2;
    git commit -m $2;
    git push origin master;
}
# if user specified -c ,the screen will be clear at FIRST time
# c(don't need var,like "-c"),c:(need var,like "-c=10")
#
while getopts "cf:" OPTION; do
	case $OPTION in
		c)	clear;;
        f)  git_commands $2 $3;;
	esac
done

