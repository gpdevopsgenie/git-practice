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
sleep 2
uname -r
echo "checking the hardware"
sleep 2
lsblk
echo "checking if system is 32 or 64 bits"
sleep 2
uname -r |awk -F_ '{print$2}'
echo "checking the hardwares info"
sleep 2
lscpu
sleep 2
echo "Thats it! Thank you"

# uname -r |awk -F. '{print$1"."$2}' this will print two fields at the same time  
  #uname -r|awk -F_ '{print$2}'  this will print just the 64 of the uname -r command
  #cat /etc/os-release |grep ^ID= |awk -F= '{print$2}'  the will print "centos"
  #cat /etc/os-release |grep ^ID= |awk -F= '{print$2}'|awk -F'"' '{print$2}'  will print only centos
  #cat /etc/os-release |awk -F= '{print$2}'|tail -5|head -1 this will print "centos-7"
  #cat /etc/os-release |grep ^CENTOS_MANT* |awk -F= '{print$2}'|head -1