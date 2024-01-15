#!/bin/bash
declare -A base64_dict

# Check if the word list file exists
word_list_file="/home/kali/Documents/words.txt"
output_file="/home/kali/Documents/words+base64.txt"

if [ ! -f "$word_list_file" ]; then
    echo "Word list file not found: $word_list_file"
    exit 1
fi

# Read words from the file and encode each one
while IFS= read -r word; do
    encoded_word=$(echo -n "$word" | base64)
    base64_dict["$word"]=$encoded_word
done < "$word_list_file"

# Write the dictionary to the output file
echo "base64 Dictionary:" > "$output_file"
for key in "${!base64_dict[@]}"; do
    echo "$key: ${base64_dict[$key]}" >> "$output_file"
done

echo "base64 dictionary has been saved to $output_file."

