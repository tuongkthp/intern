#!/bin/bash

check_nt(){
    local pattern=$1
    for (( i=2; i*i<=pattern; i++)); do
        if (( pattern % i == 0)); then
            return 0
        fi
    done
    return 1
}


read -p "Nhap mot so (1000-50000): " num

if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Lỗi: Hãy nhập một số nguyên dương."
    exit 1
fi

if (( num < 1000 || num > 50000)); then
    echo "Loi: So khong nam trong khoang 1000-50000)"
    exit 1
fi

if check_nt "$num"; then
    echo "$num la hop so"
else
    echo "$num la so nguyen to"
fi



