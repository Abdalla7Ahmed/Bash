#!/bin/bash

str1="abdallahAhmed"
str2="abdallahali"

if [ ${str1} = ${str2} ]
then 
	echo "${str1} equal ${str2}"
elif [ ${str1} != ${str2} ]
then
	echo "${str1} not equal ${str2}"
else
	echo
fi

echo "=================================================="

str1="helloworld"
str2="hello"

if [ ${str1} \> ${str2} ]
then 
        echo "${str1} grater than  ${str2}"
elif [ ${str1} \< ${str2} ]       # elif [ str1 < str2 ]  --> error   
then
        echo "${str1} less ${str2}"
else
        echo
fi

echo "=================================================="

# -n ---> check is not empty ?

str="helloworld"

if [ -n ${str} ]
then 
        echo "str is not empty "
else
	echo "str is empty "
fi

echo "=================================================="

# -z ---> check is  empty ?

str=""

if [ -z ${str} ]
then 
        echo "str is empty "
else
        echo "str is not empty "
fi

echo "=================================================="

str="helloworld"
length=${#str}
echo "the length of ${str} is ${length}"           # 10

echo "=================================================="

length=`echo ${str} | wc -c`
echo "the length of ${str} is ${length}"          # 11

# why in first case print 10 and in second case print 11 ?
# wc --> count from 1 not 0

echo "=================================================="

#splitting

address=egypt,cairo,street20
IFS="," #setting , as a delimiter
read -ra ADDR<<<"$address"
echo "your country is ${ADDR[0]}"
echo "your town is ${ADDR[1]}"
echo "your street is ${ADDR[2]}"

echo "=================================================="


for i in "${ADDR[@]}"
do 
	echo "${i}"
done


echo "=================================================="


str="hellofromegypt"
echo "the string is ${str}"
read -p "enter the start location of the string " start
read -p "enter the number of charachters " number
echo ${str:${start}:${number}}






