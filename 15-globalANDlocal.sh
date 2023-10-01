#!/bin/bash

name1="abdallah"
 
function printname1()
{
	name1="ali"
}

echo "hello ${name1}"            # hello abdallah
printname1		       	 	
echo "hello ${name1}"	 	 # hello ali


echo "=========================================================" 

name2="abdallah"
function printname2()
{
	local name2="ali"
	echo "hello ${name2} from function"
}

echo "hello ${name2}"            # hello abdallah
printname2			 # hello ali from function
echo "hello ${name2}"            # hello abdallah

