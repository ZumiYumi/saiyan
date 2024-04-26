#!/bin/bash
echo "Enter domain you wish to enumerate subdomains for like <megacorpone.com>"
read target
echo "Press crtl+z to cancel script if you have gatherered enough information."
dnsrecon -d $target -D /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt -t brt
