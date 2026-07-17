#!/bin/bash

read -p "Enter a sentence: " sentence

read -ra words <<< "$sentence"

length=${#words[@]}
for ((i=$length-1; i>=0; i--)); do
    printf "%s" "${words[i]}"

    if [ "$i" -gt 0 ]; then
        printf " "
    fi
done

echo