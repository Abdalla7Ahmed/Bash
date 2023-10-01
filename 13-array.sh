#!/bin/bash

#first method to declare an array
declare -a ARRAY1=("abdallah" "ahmed" "mohammed" 22)
#second method 
ARRAY2=("abdallah" "ahmed" "mohammed" 22)

echo ${ARRAY1[@]}
echo ${ARRAY2[@]}
echo "=============================================================="

ARRAY1[0]="ali"
echo ${ARRAY1[@]}

echo "=============================================================="


echo "the first elemnt in ARRAY1 is ${ARRAY1[0]}"

echo "=============================================================="

size=${#ARRAY1[@]}
echo "the array contain ${size} elements"      # 4 elements

echo "=============================================================="

#delete

x=10
unset x      #delete x

unset ARRAY1[0]

echo "${ARRAY1[1]}"          # nothing print

echo "${ARRAY1[@]}"          # ahmed mohammed 22 

echo "the array contain ${#ARRAY1[@]} elements"      # 3 elements

echo "=============================================================="

newarray=("abdallah" "ahmed" "mohammed" "ibrahim")
echo "${newarray[@]}"
start=1
end=3
SLICE_ARRAY=("${newarray[@]:${start}:${end}}")
 
echo "${SLICE_ARRAY[@]}"            #ahmed mohammed ibrahim

echo "=============================================================="

# note that in the string we write the number of characters not the the end index

str="abdallahahmedmohammedibrahim"
echo "${str:0:8}"          #abdallah

echo "=============================================================="

for i in ${newarray[@]}
do
	echo ${i}
done

echo "=============================================================="
#if we want to print the index 
for i in ${!newarray[@]}
do
        echo ${i}
done


echo "============================ example =================="


read -p "enter the number of elements " number_of_elements
for (( i=0 ; i< ${number_of_elements} ; i++ ))
{
	read -p "enter elemnt number $((${i}+1)) : "  array[i]
}

for i in ${!array[@]}
do
        echo "elemnt number ${i} is ${array[i]}"
done
