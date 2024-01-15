#!/bin/bash

echo "Enter the data you want to encode in base64:"
read -p "> " input_data

# Encode the input data to base64
encoded_data=$(echo -n "$input_data" | base64)

echo "Base64 encoded string:"
echo "$encoded_data"

