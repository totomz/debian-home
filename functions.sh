#!/bin/bash
# Common functions

# Mounaìt a disk by id in a folder
# Usage: mountdisk <disk-id> <path>
mountdisk () {
    echo "Mounting /dev/disk/by-id/ $1 in $2"

    parted -s /dev/disk/by-id/$1 mktable gpt
    parted -s /dev/disk/by-id/$1 mkpart primary ext4 0% 100% 
    sleep 5
    mkfs.ext4 /dev/disk/by-id/$1-part1 -L pgdata
    sleep 2
    mkdir $2
    echo "/dev/disk/by-id/$1-part1 $2 ext4 noatime,data=writeback,barrier=0,nobh 0 2" >> /etc/fstab
    mount -a

}
