#!/bin/bash
declare -A base58_dict

# Check if the word list file exists
word_list_file="/home/kali/Documents/rockyou.txt"
output_file="/home/kali/Documents/rockyoubase58.txt"

if [ ! -f "$word_list_file" ]; then
    echo "Word list file not found: $word_list_file"
    exit 1
fi

# Read words from the file and encode each one
while IFS= read -r word; do
    encoded_word=$(echo -n "$word" | base58)
    base58_dict["$word"]=$encoded_word
done < "$word_list_file"

# Write the dictionary to the output file
echo "base58 Dictionary:" > "$output_file"
for key in "${!base58_dict[@]}"; do
    echo "$key: ${base58_dict[$key]}" >> "$output_file"
done

echo "base58 dictionary has been saved to $output_file."

