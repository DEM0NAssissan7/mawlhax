#!/bin/bash

echo Initializing variables
chmod +x vars.sh
source vars.sh
echo

if [[ -d $dir ]]; then
echo Removing old prefix...
sudo rm -r $dir
echo
fi

echo Installing mawlhax...
echo
echo Creating prefix
sudo mkdir $dir
echo
echo Adjusting permissions
sudo chmod 777 $dir
sudo chmod 777 $vars
sudo chmod +x $lfile
sudo chmod +x $lshell
#sudo chmod 777 $hax
sudo chmod +x $hax
echo
echo Copying files into $dir
sudo cp $vars $dir
sudo cp $install $dir
sudo mkdir $dir/shell
sudo cp $lfile $dir/shell
sudo cp $lshell $dir/shell
sudo cp $hax $dir/shell
echo
echo Copying $lfile into $bin
if [[ -f $bin/$lfile ]]; then
sudo rm $bin/$lfile
fi
sudo cp $lfile $bin
echo 
echo Copying finished!
echo
read -p "Press enter to complete setup:"

#Load hax
$lfile
