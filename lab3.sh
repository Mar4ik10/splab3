#!/bin/bash

for i in {1..5}; do
	echo $((RANDOM % 100 + 1)) >> numbers.txt
done

echo "Випадкові числа записані у файл numbers.txt:"
cat numbers.txt

# Знаходження та видалення всіх чисел крім найменшого
min_number=$(sort -n numbers.txt | head -n 1)
echo "Найменше число: $min_number"

# Створення тимчасового файлу для збереження тільки найменшого числа
echo "$min_number" > temp.txt

# Перейменування тимчасового файлу на вихідний файл
mv temp.txt numbers.txt

echo "Тільки найменше число залишено у файлі numbers.txt:"
cat numbers.txt

# Видалення тимчасового файлу
rm numbers.txt
