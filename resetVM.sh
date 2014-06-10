#!/bin/bash
echo "This script will change the hostname of the VM and will reset the networ interface."

# 1) Updating the hostname for the VM
clear
current_hostname=$(cat /etc/hostname)
read -p "The current Hostname is $current_hostname. Please enter a *new* one: " hostn
sed -i "s/$current_hostname/$hostn/g" /etc/hostname
sed -i "s/$current_hostname/$hostn/g" /etc/hosts
echo "" 

echo "The new hostname is " $(cat /etc/hostname)
echo "***** This is your new hosts file *****"
echo $(cat /etc/hosts)
echo "***************************************"
echo "" 

# 2) Reset the network interfaces
read -p "Press enter to reset the network interfaces." pippo
rm -f /etc/udev/rules.d/70-persistent-net.rules

# Reboot the system
read -p "Press enter to reboot NOW"
shutdown -r now
