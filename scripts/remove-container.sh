#!/bin/bash

sudo docker ps -a

echo ""

read -p "Enter the row of the container you want to remove: " key
echo ""

cont_id=$(sudo docker ps -a | awk -v id=$((key + 1)) 'NR==id {print $1}')
cont_name=$(sudo docker ps -a | awk -v id=$((key + 1)) 'NR==id {print $2}')

echo "Container ID: $cont_id   Container Name: $cont_name"
echo ""

read -p "Are you sure you want to remove $cont_name? y/n: " choice

echo ""

if [ $choice == "y" ]; then
	echo "Removing container"
	(sudo docker rm $cont_id)
	echo "Container '$cont_name' have been successfully removed"

	exit 0

elif [ $choice == "n" ]; then
	echo "Cancelled"
	exit 0
fi



