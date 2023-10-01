#!/bin/bash

<<syntax 
case var in 
a)
;;
b)
;;
c)
;;
*)	#default
;;
esac
syntax


read -p "enter your name "  name
case ${name} in 
"ahmed")
	echo "welcome ahmed"
;;

"ali")
        echo "welcome ali"
;;

"omar")
        echo "welcome omar"
;;
*)
	echo "name not welcomed"
;;
esac


# we can use 
read -p "enter your name "  name
case ${name} in 
"ahmed"|"ali"|"omar")
        echo "welcome ${name}"
;;
*)
        echo "${name} not welcomed"
;;
esac

