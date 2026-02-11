#!/bin/bash
KEY_DIR="$HOME/.ssh"
KEY_NAME="id_rsa"
KEY_PATH="$KEY_DIR/$KEY_NAME"

filename="$1"
host="10.0.0.104"
while IFS= read -r line; do
        user=$(echo $line | cut -d ":" -f 1)
        pass=$(echo $line | cut -d ":" -f 2)
        echo "$user $pass"
done < "$filename"

if [[ -f "$KEY_PATH" ]]; then
        echo "   SSH key '$KEY_PATH' đã tồn tại"
else
        read -s -p "Nhập passphrase (Enter để bỏ qua): " PASSPHRASE
        echo

        ssh-keygen -t rsa -b 4096 -f "$KEY_PATH" -N "$PASSPHARASE" -C "$(whoami)@$(hostname)"
        cat "$KEY_PATH.pub"
fi

ssh-copy-id -i $KEY_PATH.pub $user@$host