#!/bin/bash


#enable debug 
set -x

echo "debigging start"

for i in 5 2 3 
do 
echo "debug info about printing number ${i}" 
done 


#disable debig
set +x

echo "debug end "


