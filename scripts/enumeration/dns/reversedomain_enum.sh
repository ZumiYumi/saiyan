#!/bin/bash
echo "Reverse Pointer script"
echo "Enter network ip address like <51.222.169>"
read target
echo "Enter range of ips you want to check like <200 254> this will iterate through host ips 200-254"
read range
echo "press CTL+Z if you have gathered enough information."
for ip in $(seq $range ); do host $target.$ip; done| grep -v "not found" 
