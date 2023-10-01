#!/bin/bash


echo "select name"
#select name in abdallah omar ali mahmoud
#do
#	echo ${name}
#done 
#stuck in select 

# to break from select we use break 

select name in abdallah omar ali mahmoud
do
	case ${name} in 
	abdallah)
	echo "welcome abdallah"
	;;
	omar)
	echo "welcome omar "
	;;
        ali)
        echo "welcome ali "
        ;;
        mahmoud)
        echo "welcome mohammed "
        ;;
	*)
	break          # break from select not just case
	;;
	esac
done 

echo "========================= exit ==============="


