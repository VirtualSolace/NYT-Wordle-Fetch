#!/bin/bash

# -- Get current date as yyyy-mm-dd --
DATE=$(date +"%F")

# -- Create the output filename --
FILENAME="${DATE}.json"

# -- Base URL --
BASE_URL="https://www.nytimes.com/svc/wordle/v2/"

# -- Full URL with date-based filename --
FULL_URL="${BASE_URL}${FILENAME}"

# -- Get JSON File --
wget -O "$FILENAME" "$FULL_URL"

echo "Downloaded $FULL_URL to $FILENAME"

clear

# -- Extract the solution using jq --
SOLUTION=$(jq -r '.solution' "$FILENAME")

echo "Wordle solution for $DATE: $SOLUTION"
