#!/bin/bash

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $usage -gt 80 ]; then
	echo "The storage threshold 80% have been exceeded. Thu current usage is $usage%"

elif [ $usage -eq 80 ]; then
	echo "The storage threshold have been reached"

else echo "The storage is below the threshold"

fi


