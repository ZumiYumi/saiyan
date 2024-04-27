#!/bin/bash
echo "Welcome to the network nmap helper script!"
echo "Please enter the network ip you would like to scan, example <192.168.45>"
read target
nmap -v -sn $target.1-253 -oG ping-sweep.txt
grep Up ping-sweep.txt | cut -d " " -f2 > net-sweep.txt
if [ ! -f "net-sweep.txt" ]; then
	echo "Error: File 'net-sweep.txt' not found."
	exit 1
fi

while IFS= read -r ip; do
	sudo nmap -sU -sS "$ip"
done < "net-sweep.txt"
