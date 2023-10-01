#!/bin/bash
x=5
y=10
if [ ${x} -eq 5 ] && [ ${y} -eq 10 ]        
# or --->  if [[ ${x} -eq 5  &&  ${y} -eq 10 ]]  
# or --->  if [ ${x} -eq 5  -a  ${y} -eq 10 ]    
then 
	echo "condition is true "
else
	echo "condition is not true "
fi


# -a ---> and &&
# -o  ---> or || 


if [ 1 = 1  -o 2 = 1 ]  # if [[ 1=1 || 1 = 2 ]]     if [ 1 = 1 ] || [ 1 = 2 ]
then 
        echo "condition is true "
else
        echo "condition is not true "
fi

