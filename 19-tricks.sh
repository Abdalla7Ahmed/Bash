#!/bin/bash

#1- declear

#      -a	to make NAMEs indexed arrays (if supported)
#      -A	to make NAMEs associative arrays (if supported)
#      -i	to make NAMEs have the `integer' attribute
#      -l	to convert the value of each NAME to lower case on assignment
#      -n	make NAME a reference to the variable named by its value
#      -r	to make NAMEs readonly
#      -t	to make NAMEs have the `trace' attribute
#      -u	to convert the value of each NAME to upper case on assignment
#      -x	to make NAMEs export

# declare array
declare -a array=(1 2 3 4 "name")
echo ${array[@]}

# declare array with integer only 
declare -i array=(1 2 3 "name" "name2")           
echo ${array[@]}                 # 1 2 3 0 0

# lower case
declare -l str1=("ABCD" "EFG")           
echo ${str1[@]}  				    #abcd efg

declare -l str2="ABC"
echo ${str2}					    # abc



declare -u str3=("abc" "efG")           
echo ${str3[@]}					    #ABC EFG


 		   
declare -A dict
dict["name"]="abdallah"
dict["age"]=23
echo ${dict["name"]}
echo ${dict["age"]}


echo "============================================================="

ps | while
read PID tty _time cmd
do
	echo "${PID} is Working with ${cmd}"
done
echo "============================================================="
if
ls -ls
then 
	echo "listing the files done"
else
	echo "command not found"
fi

echo "============================================================="
#indirect access
y=name
name="abdallah"
echo ${y}         # name
echo ${name}	  # abdallah
echo ${!y}	  # abdallah

echo "============================================================="

#string delete

#{var#prefix} 			
#{var%postfic}
str="abdallah ahmed mohammed"
echo ${str#*ahmed}         # mohammed
echo ${str%mohammed*}      # abdallah ahmed
tmp=`echo ${str} | cut -d " " -f 2 `
echo ${tmp}                # ahmed

echo "============================================================="
#x=1
y=${x:- "embedded linux"}    # if x is not defined , define y with embedded linux else define y with the value of x
echo $x
echo $y			# embedded linux
#c=5
z=${c:= "embedded linux"}    #if c not define , define c and z with embedded linux else define z with the value of c
echo $c			# embedded linux
echo $c			# embedded linux

echo "============================================================="


a=50
echo ${a:?}     #print a if defined , else ---> error



