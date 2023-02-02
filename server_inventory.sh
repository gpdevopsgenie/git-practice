#! /bin/bash

#Author: gp
#date: Feb 2023
## Script to check invotory on server

echo "checking the number of processors"
sleep 2
nproc
echo "checking the memory size"
sleep 2
free -m
echo "checking the os version"
sleep 2
cat /etc/os-release
echo "checking kernel version"
sleep2
uname -r
echo "checking the hardware"
sleep 2
lsblk
echo "checking if system is 32 or 64 bits"
sleep 2
uname -r | awk -F_{print$2}'
echo "checking the hardwares info"
sleep 2
lscpi
