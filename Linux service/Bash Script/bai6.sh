#!/bin/bash

read -r -p "Nhập một xâu ký tự: " input

if [[ -z "$input" ]]; then
    echo "Chuỗi rỗng"
    exit 0
fi

numUp=0
num=0
length=${#input}
echo $length

for ((i=0; i<length; i++)); do
    char="${input:$i:1}"
    if [[ "$char" =~ [A-Z] ]]; then
        numUp=$(($numUp + 1))
    elif [[ "$char" =~ [a-z] ]]; then
        num=$(($num + 1))
    else
        continue
    fi
done

echo "Chuoi co $numUp ky tu hoa va $num ky tu thuong"