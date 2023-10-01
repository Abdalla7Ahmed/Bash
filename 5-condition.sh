#!/bin/bash

# to compair two strings we use 
	# = 	    the first string equal the second string 
	# != 	    the first string not equal the second string  
# to compair integer we use 
	# -eq       equal      
        # -ge       grater than or equal
        # -gt       grater than 
        # -le       less than or equal
        # -lt       less than
        # -ne       not equal
# there are other arguments used with test & if 
        # -d        FILE exists and is a directory
        # -e        FILE exists 
        # -h        FILE exists and is a symbolic link (same as -h)
        # -s        FILE exists and has a size greater than zero
	# -f  	    FILE exists and is a regular file
# open manual page to see more (man test or man [ )
#============================================================


test "ahmed" = "ahmed" && echo "yes equal"           # yes equal 

test ahmed = ahmed && echo "yes equal"           # yes equal  
 
 
test 5 = 05 && echo "yes 5 equal 05" || echo "no 5 not equal 05"  # no 5 not equal 05


#if syntax 
if [ ahmed = ahmed ]         # must space after the [ and before ]
then 
	echo "equal"
else
 	echo "not equal"
fi    


# example 1
echo "==================================================="
read -p "enter the value of x : " x 
if [ ${x} -eq 5 ]
then 
	echo "x = ${x}"
elif [ ${x} -gt 5 ]
then 
	echo "x is grater  than 5"
else 
	echo "error "
fi
echo "==================================================="
test -f "./0-tmp" && echo "the file exist" || echo "the file not exist "
#or
if [ -f "./0-tmp" ]
then 
	echo "the file exist" 
else
 	echo "the file not exist "
fi
echo "==================================================="
# applicatio on if condition 
ls_val=`ls`
for i in ${ls_val}
do 
	if [ -d ${i} ]
	then 
		echo "the ${i} is directory "
	elif [ -h ${i} ]
	then 	
		echo "the ${i} is symbolic link "
        elif [ -f ${i} ]
        then    
                echo "the ${i} is file "
	else
		echo "the ${i} is not directory , file or symbolic link "
	fi
done




