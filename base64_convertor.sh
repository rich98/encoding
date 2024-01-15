#!/bin/bash

# Check if the word list file exists
word_list_file="/home/kali/Documents/words.txt"
output_file="base64_encoded_strings.txt"

if [ ! -f "$word_list_file" ]; then
    echo "Word list file not found: $word_list_file"
    exit 1
fi

# Encode each word and write to the output file
while IFS= read -r word; do
    encoded_word=$(echo -n "$word" | base64)
    echo "$encoded_word" >> "$output_file"
done < "$word_list_file"

echo "Base64-encoded strings have been saved to $output_file."

