#!/bin/bash

filename=$1
pkgInstalled=()
pkgInstall=()

installed (){
    pkg=$1
    if apt list --installed 2>/dev/null | grep -q "^$pkg/"; then
        echo "$pkg đã cài."
        return 0
    else
        echo "$pkg chưa cài."
        return 1
    fi
}

while IFS= read -r line; do
    if installed $line; then
        pkgInstalled+=("$line")
    else
        pkgInstall+=("$line")
    fi
done < "$filename"

echo " "
echo "${pkgInstalled[@]}"
echo " "
echo "${pkgInstall[@]}"

if [ ${#pkgInstalled[@]} -ne 0 ]; then
    for i in "${pkgInstall[@]}"; do
        if command -v apt >/dev/null 2>&1; then
            sudo apt update && sudo apt install -y "$i"
        fi
    done
fi