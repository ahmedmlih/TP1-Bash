#!/bin/bash

if (($# == 0));
then 
	echo "You have no friend."
elif (($# == 1));
then
	echo "You have 1 friend : $@."
elif (($# > 1));
then 
	names="$1"
	for ((i=2; i<=$#; i++));
	do 
		names="$names, ${!i}"
	done
	echo "you have $# friends : $names."
fi 
exit $#

