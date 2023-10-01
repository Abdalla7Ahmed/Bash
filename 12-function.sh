#!/bin/bash

test1()
{
	echo "test1"
}

test1


function test2()
{
	echo "test2"
}

test2


function test3
{
	echo "test3"
}

test3


test4 (){
	echo "test4"
}

test4



function test5()
{
	echo $$		#pid
	echo $@		#abdallah ahmed mohammed
	echo $1		#abdallah
	echo $2		#ahmed
	echo $2		#mohammed
}

#test5 abdallah ahmed mohammed


function add()
{
	sum=$(( $1 + $2 ))
	return ${sum}
}

a=10
b=20
add ${a} ${b}
result=$?

echo "${a} + ${b} = ${result}"
