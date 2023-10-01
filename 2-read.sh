#!/bin/bash

echo "enter your name "
read name 
echo "hi ${name}"


#we can use -p to print string during the reading from user 

read -p "enter your age " age
echo "your age is ${age}"


#we can use -s to hidden the input value 
read -sp  "enter your password  " pass
echo "your pass is ${pass}"
