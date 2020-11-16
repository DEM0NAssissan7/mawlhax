#!/bin/bash

if [[ -d ~/mawlhax.config ]]; then
source ~/mawlhax.config/vars.sh
else
echo Could not find mawlhax.config
echo Try reinstalling
echo Maybe the dir variable is wrong
echo Or this file is wrong
echo mawl you idot
exit
fi
source $dir/$hax
while true; do
read -p "$name- " command

trap ctrl_c INT

function ctrl_c() {
	echo
        echo -n $name-
}

#Basic default scripts
function reload {
source $dir/$hax
}

function list {
cat $dir/$hax
}

function target {
target=$1
}

$command
done
