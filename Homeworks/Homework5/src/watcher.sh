#!/bin/bash

WATCH_DIR="$HOME/watch"

mkdir -p "$WATCH_DIR"

while true
do
    for file in "$WATCH_DIR"/*
    do
        if [ ! -f "$file" ]; then
            continue
        fi

        if [[ "$file" == *.back ]]; then
            continue
        fi

        echo "New file: $file"

        cat "$file"

        mv "$file" "$file.back"
    done

    sleep 2
done