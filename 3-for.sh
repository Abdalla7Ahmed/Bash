#!/bin/bash

for i in 1 2 3 4 5
do
echo "line number ${i} printed "
done 

# we can use regular expression 

for i in {1..10}           # from 1 to 10
do 
echo "${i}"
done

#we can use for to loop in  string 
name="abdallah ahmed mohammed ibrahim"
for i in ${name}
do 
	echo "single word is : ${i} "
done 

ls_var=`ls`      #execute the ls command and then store the result in ls_var
#loop in ls_var
for i in ${ls_var}
do 
	echo "the file name is : ${i}"
	echo "${i} content is "	
	cat ./${i}
	echo "==============================================="
	echo 	#new line 
done


