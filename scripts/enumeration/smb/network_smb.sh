#!/bin/bash
echo "This is the SMB network scan script"
echo "Enter the network target range like <192.168.50>"
read target
nmap -v -p 139, 445 -oG smb.txt $target.1-254
grep open smb.txt | cut -d " " -f2
