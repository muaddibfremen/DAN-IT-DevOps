#!/bin/bash

source_file="$1"
destination="$2"

if [ ! -f "$source_file" ]; then
    echo "Error: Source file '$source_file' does not exist."
    exit 1
fi

if cp "$source_file" "$destination"; then
    echo "File copied successfully."
else
    echo "Error: Failed to copy the file."
    exit 1
fi