#!/bin/bash

# Function to print usage instructions
usage() {
    echo "Usage: $0 <target_ip> -u <username> [-d <domain>] -p <password>"
    echo "Options:"
    echo "  <target_ip>    : IP address of the target machine"
    echo "  -u <username>  : Username for authentication"
    echo "  -d <domain>    : Domain (optional, except for VNC, SSH, and FTP)"
    echo "  -p <password>  : Password for authentication"
    exit 1
}

# Check if the required number of arguments are provided
if [ $# -lt 6 ]; then
    usage
fi

# Extracting parameters
target_ip=$1
username=""
domain=""
password=""
services=("smb" "vnc" "winrm" "ldap" "ssh" "rdp" "wmi" "mssql" "ftp")

# Parsing command line arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        -u)
            username="$2"
            shift
            ;;
        -d)
            if [[ ${services[*]} =~ "vnc|ssh|ftp" ]]; then
                echo "Domain (-d) parameter is not supported for $1."
                exit 1
            fi
            domain="-d $2"
            shift
            ;;
        -p)
            password="$2"
            shift
            ;;
        *)
            target_ip="$1"
            ;;
    esac
    shift
done

# Check if username and password are provided
if [ -z "$username" ] || [ -z "$password" ]; then
    usage
fi

# Loop through services and execute NetExec command
for service in "${services[@]}"; do
    if [[ "$service" == "vnc" || "$service" == "ssh" || "$service" == "ftp" ]]; then
        echo "Trying $service..."
        netexec $service $target_ip -u $username -p "$password"
    else
        echo "Trying $service..."
        netexec $service $target_ip -u $username $domain -p "$password"
    fi
done
