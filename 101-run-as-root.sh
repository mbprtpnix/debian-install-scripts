#!/bin/bash

apt install git vim sudo

sed -e '/Binary/s/^/#/g' -i /etc/apt/sources.list
sed -i 's/main/main contrib nonfree/gI' /etc/apt/sources.list

apt update && apt upgrade

chmod 755 /etc/sudoers

cat ~/sudouser.txt >> /etc/sudoers

chmod 600 /etc/sudoers

rm sudouser.txt

apt install firmware-linux

apt install llvm clang