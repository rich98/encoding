#!/bin/bash

while true; do
    echo "Base64 Calculator"
    echo "1. Encode"
    echo "2. Decode"
    echo "3. Exit"
    read -p "Choose an option (1/2/3): " choice

    case $choice in
        1)
            read -p "Enter the string to encode: " input_string
            encoded_string=$(echo -n "$input_string" | base64)
            echo "Base64 Encoded String: $encoded_string"
            ;;
        2)
            read -p "Enter the base64 string to decode: " input_base64
            decoded_string=$(echo -n "$input_base64" | base64 -d)
            echo "Decoded String: $decoded_string"
            ;;
        3)
            echo "Exiting Base64 Calculator. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose a valid option."
            ;;
    esac

    echo "-----------------------------------------"
done

