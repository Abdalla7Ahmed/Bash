#!/bin/bash
<<COMMENTS
$0 specifies the name of the script to be invoked.
$1-$9 stores the names of the first 9 arguments or can be used as the arguments' positions.
$# specifies the total number (count) of arguments passed to the script.
$* stores all the command line arguments by joining them together.
$@ stores the list of arguments as an array.
$$ specifies the process ID of the current script.
$? specifies the exit status of the last command or the most recent execution process.
COMMENTS

echo $$ 			# pid of the script 
echo $0 			# path of the script
echo $#				# the number of arguments which passed
echo $* 			# the argument which passed as a single string
echo $@ 			# the arguments which passed as a list we can loop on it 
echo $?				# if the last command succedded it will be zero else 127 	 


# ========================== example 1 ============================== 
read -p "enter your name " name
if [ $? -eq 0 ] 
then 
	echo "welcome"
else
        echo "wrong command"

fi 
# the output will be welcome if the command succedded 
# ========================== example 2 ============================== 
rea=d -p "enter your name " name
if [ $? -eq 0 ] 
then 
        echo "welcome"
else
	echo "wrong command"
fi 

# the output will be wrong command if the command failed

# ========================== example 3 ============================== 
#the diff between $@ and $*
echo "==============================="
arg=$@
for i in ${arg}
do
	echo ${i}
done
#the output will be 
# a
# b
# c

for i in "$*"
do
        echo ${i}
done
#the  output will be  a b c
echo "==============================="


# ========================== example 4 ============================== 
#we can use the for loop syntax from C 
size=$#
arg=($@)
for(( i =0 ; i<${size} ; i++ ))
do
	echo "${arg[i]}" 
done


