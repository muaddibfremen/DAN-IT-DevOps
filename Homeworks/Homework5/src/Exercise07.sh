#!/bin/bash

filename="$1"

if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

line_count=$(wc -l < "$filename")

echo "File '$filename' contains $line_count lines."