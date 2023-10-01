#!/bin/bash

readonly x=10

echo "x = ${x}"

#x=20       #error


#we can also declare readonly variable as 
y=20
readonly y
echo "y = ${y}"

fun1()
{	
	echo "hello from fun1"
}
 
fun1 					      # hello from fun1
fun1()
{
	echo "hello from fun1 again"
}

fun1 					      # hello from fun1 again


fun2()
{
	echo "hello from fun2"
}

readonly -f  fun2                            # make fun2 read only 
fun2                                         # hello from fun2 
fun2()      
{ 
        echo "hello from fun2 again"         # error
}

fun2 					    #  # hello from fun2 

