#!/bin/bash

#assume  we pass arguments   1 2 3 4 5  
echo "the arguments witch passed are $@"                 # the arguments witch passed are 1 2 3 4 5

echo "the arguments witch passed are $1 $2 $3 $4 $5"     # the arguments witch passed are 1 2 3 4 5
shift  # by default shift 1
echo "the arguments witch passed are $1 $2 $3 $4 $5"     # the arguments witch passed are 2 3 4 5
shift 2
echo "the arguments witch passed are $1 $2 $3 $4 $5"     # the arguments witch passed are 4 5
shift 
echo "the arguments witch passed are $1 $2 $3 $4 $5"     # the arguments witch passed are 5
shift
echo "the arguments witch passed are $1 $2 $3 $4 $5"     # the arguments witch passed are 

