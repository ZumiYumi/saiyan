#!/bin/bash
echo "DNS Enum script"
echo "Enter target domain name like megacorpone.com"
read target
echo "press CTL+Z if you have gathered enough information or it will continue running until all 5,000 subdomain names have been checked."
for ip in $(cat /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt); do host $ip.$target;done| grep -v "not found" 
