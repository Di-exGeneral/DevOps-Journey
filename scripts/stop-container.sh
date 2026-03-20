#!/bin/bash

sudo docker ps

echo ""

read -p "Enter the row of the container you want to stop: " key
echo ""

cont_id=$(sudo docker ps | awk -v id=$((key + 1)) 'NR==id {print $1}')
cont_name=$(sudo docker ps | awk -v id=$((key + 1)) 'NR==id {print $2}')

echo "Container ID: $cont_id   Container Name: $cont_name"
echo ""

read -p "Are you sure you want to stop $cont_name? y/n: " choice

echo ""

if [ $choice == "y" ]; then
	echo "Stopping container"
	sudo docker stop $cont_id
	echo "Container '$cont_name' have been stopped successfully"

	exit 0

elif [ $choice == "n" ]; then
	echo "Cancelled"
	exit 0
fi
