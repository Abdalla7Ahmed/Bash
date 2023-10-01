#!/bin/bash

#abc     --> a b c without any values
#a:b:c   --> a and b with values but c without 

while getopts "a:b:c" opt;
do
case ${opt} in
	a)
	echo "the value of a is ${OPTARG}"           # OPTARG is build in variable
	;;
	b)
	echo "the value of b is ${OPTARG}" 
	;;
	c)
	echo "c has no value "
	;;
	*)
	echo "no option"
	;;
esac

done


#to receive anything after options
shift $((OPTIND-1))

echo "the another argument is $1"
