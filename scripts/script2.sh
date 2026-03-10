#!/bin/bash

check_num() {
	num=$1
	if [ $num -lt 10 ]; then
		echo "$num is less than 10"

	elif [ $num -eq 10 ]; then
		echo "$num is equal to 10"

	else
		echo "$num is greater than 10"

	fi

}


for i in 8 10 12; do
	check_num $i

done
