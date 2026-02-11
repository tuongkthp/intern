#!/bin/bash

filename="$1"
line="$2"

echo "File: $filename"

if [[ -f "$filename" ]]; then
    numLine=$(wc -l < "$filename")
    echo "Số dòng: $numLine"

    if [[ "$numLine" -lt "$line" ]]; then
        echo "Không có dòng số $line"
        exit 1
    fi

    result=$(awk "NR==$line" "$filename")
    echo "Nội dung dòng $line: $result"
else
    echo "File không tồn tại"
fi