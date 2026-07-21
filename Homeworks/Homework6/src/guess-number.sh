#!/bin/bash

secret_number=$((RANDOM % 100 + 1))
max_attempts=5

echo "Я загадав число від 1 до 100."
echo "У вас є 5 спроб."

for ((attempt=1; attempt<=max_attempts; attempt++))
do
    echo
    echo "Спроба $attempt із $max_attempts"
    read -rp "Введіть число: " guess

    if ((guess < 1 || guess > 100)); then
        echo "Число має бути від 1 до 100."
        continue
    fi

    if ((guess == secret_number)); then
        echo "Вітаємо! Ви вгадали правильне число."
        exit 0
    elif ((guess > secret_number)); then
        echo "Занадто високо."
    else
        echo "Занадто низько."
    fi
done

echo
echo "Вибачте, у вас закінчилися спроби. Правильним числом було $secret_number."
exit 1