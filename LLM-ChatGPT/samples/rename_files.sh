#!/bin/bash

# Prompt the user for the prefix to prepend to the filenames
read -p "Enter the prefix to prepend to filenames: " prefix

# Counter for numbering files
counter=1

# Navigate to the 'files' folder on the desktop
cd ~/Desktop/files || exit

# Loop through each file in the folder
for file in *; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Extract the file extension
        extension="${file##*.}"
        # Generate the new filename with the specified prefix, underscore, and number
        new_filename="${prefix}_${counter}.${extension}"
        # Rename the file
        mv "$file" "$new_filename"
        # Increment the counter
        ((counter++))
    fi
done

echo "Files have been renamed."
