#!/bin/bash

name="nginx"

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

if !(installed $name); then
    if command -v apt >/dev/null 2>&1; then
        sudo apt update && sudo apt install -y "$name"
    fi
fi