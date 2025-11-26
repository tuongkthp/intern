#!/bin/bash

a=$1
b=$2
pt=$3

if [[ "$pt" == "+" || "$pt" == "-" || "$pt" == "*" || "$pt" == "/" || "$pt" == "%" ]]; then
        if [[ "$pt" == "/" && $b -eq 0 ]]; then
                echo "Lỗi: Không thể chia cho 0"
                exit 1
        fi

        kq=$((a $pt b))
        echo "$a $pt $b = $kq"
else
        echo "Toan tu khong hop le"
        exit 1
fi



