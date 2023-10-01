#!/bin/bash
cmdlist=/home/abdallah/.cmdlist
exe=/tmp/tmpcmd

if [ $# -eq 0 ]
then
	echo "usage cmd <command>"
	echo " =========== your commands are : ============== "
	cat ${cmdlist}
fi


key=$1
cmd=""

while read line
do
	echo ${line} | grep ^${key} 
	if [ $? -eq 0 ]
	then 
	cmd=`echo ${line} | cut -d "=" -f 2`
	fi
done < ${cmdlist}

if [ "${cmd}" = "" ]
then
	echo "command not found "
        echo " =========== your commands are : ============== "
        cat ${cmdlist}

else
	echo ${cmd} > ${exe}
	bash ${exe}
fi

