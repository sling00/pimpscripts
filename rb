#!/bin/bash
HOSTNAME1=`hostname`
echo "Reboot of $HOSTNAME1 initiated"
echo "Syncing disks...."
/bin/sync
echo "Sync complete...."
echo -n "Rebooting in 3..."
sleep 1
echo -n "2..."
sleep 1
echo -n "1..."
sleep 1
/sbin/reboot
