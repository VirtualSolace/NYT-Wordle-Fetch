#!/bin/bash

# -- Get current date as yyyy-mm-dd and create the output filename --
# -- Get JSON File and save it directly --
wget -O "$(date +"%F").json" "https://www.nytimes.com/svc/wordle/v2/$(date +"%F").json"

echo "Downloaded Wordle JSON for $(date +"%F")"

clear

# -- Extract the solution using jq --
echo "Solution: $(jq -r '.solution' "$(date +"%F").json")"
