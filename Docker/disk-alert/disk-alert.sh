#!/bin/sh

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $usage -gt 70 ]; then
	echo "The storage threshold of 70% have been exceeded. The current usage is $usage%"

elif [ $usage -eq 70 ]; then
	echo "The storage threshold have been reached"

fi


