
#!/bin/bash

#reading from file
file=`cat 18-test.txt`
echo "${file}"
echo "============================================"
file=$(cat 18-test.txt)
echo "${file}"
echo "============================================"

#while read line 
#do

#done < file.txt

# or
file=18-test.txt
while read line 
do
	echo ${line}
	if [ -z ${line} ]
	then 
		echo "nothing in this line"
	elif [ ${line} = abdallah ]
	then
		echo "welcom ${line}"
	fi
done < ${file}

# >  redirect output overwrite
# >> redirect output append

# <  redirect input

echo "hello" >> 18-test.txt
# to use varibales from other script we must sourc the script first to use it's variables

source 18-test.sh
echo "name is ${name}"
echo "age is ${age}"
echo "${message}"
