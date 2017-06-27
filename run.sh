#!/bin/bash

#Batch install packages from list.tmp
bash instpkgs.sh > list.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
yum install -y $line
done < list.txt

