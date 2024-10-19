#!/bin/bash
# Simple bash script to measure both download and upload speeds of your internet connection using the speedtest-cli tool.

# Run speed test
echo "Running speed test..."

download_speed=$(speedtest --simple | awk '/Download/ {print $2}')
upload_speed=$(speedtest --simple | awk '/Upload/ {print $2}')

# Display results
echo "Download speed: $download_speed"
echo "Upload speed: $upload_speed"
