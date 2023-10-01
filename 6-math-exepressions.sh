#!/bin/bash

#first way
x= expr 5 + 6
echo ${x}

#second way
let z=5+6
echo ${z}

#third way 
x=10
y=20
(( x++ ))          # in cas ++ or -- we can use this exepression without $
(( y-- ))
echo ${x}
echo ${y}

echo "===================================="

c=$((${x} + ${y}))
echo ${c}
echo $((${x} + ${y}))       # the same result 

echo $((${x} ** 2))      # x power y

echo $(( x += 20))

#application  ====================================================== 
echo "===================================="
read -p "enter the first number: " first_number
read -p "enter the operation : " operation
read -p "enter the second number : " second_number

if [ "${operation}" = "+" ]
then 
	echo "${first_number} + ${second_number} = "$(( ${first_number} + ${second_number} ))
elif [ "${operation}" = "-" ]
then 
        echo "${first_number} - ${second_number} = "$(( ${first_number} - ${second_number} ))
elif [ "${operation}" = "*" ]
then 
        echo "${first_number} * ${second_number} = "$(( ${first_number} * ${second_number} ))
elif [ "${operation}" = "/" ]
then 
	if [ "${second_number}" -eq 0 ]
	then 
		echo "error can't devide by zero"
	else
     		 echo "${first_number} / ${second_number} = "$(( ${first_number} / ${second_number} ))
	fi
else
	echo "wrong option"
fi
