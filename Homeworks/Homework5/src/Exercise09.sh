#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

if [ -f "$filename" ]; then
    echo "File contents:"
    echo "----------------"
    cat "$filename"
else
    echo "Error: File '$filename' does not exist." >&2
    exit 1
fi