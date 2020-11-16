#!/bin/bash
#Custom mawlhax functions

function help {
echo
echo trace - trace route to target
echo gate - find default gateway
echo pip - get your public ip
echo hw - bring up a neofetch window
echo dev - list all detected devices on the network
echo bdev - brute force detect all devices on target network
echo scan - scan target for open ports
echo
echo
echo dep - install ALL dependancies
echo dep [sudo apt]
echo
echo shell - attempt to remotely connect to target with ssh
echo shell [user]
}

function dep {
$1 net-tools nmap neofetch dig
}

function shell {
ssh $1@$target
}

function trace {
tracepath $target
}

function gate {
ip r | grep default
}

function pip {
dig +short myip.opendns.com @resolver1.opendns.com
}

function dev {
arp -a
}

function bdev {
nmap -sn $target/24
}

function scan {
nmap -p1-65535 $target
}

function hw {
neofetch
}
