#!/bin/bash

errors=$(grep -in "error" $1) 

count=$(grep -ic "error" $1)


echo "$errors"


echo ""

echo "Number of errors: $count"
