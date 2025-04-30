#!/bin/bash

writefile=$1
writestr=$2

if [ -z $writefile ] || [ -z "$writestr" ]; then
	echo "First or second argument not specified"
	exit 1
fi

mkdir -p "$(dirname "$writefile")" && touch $writefile
echo $writestr > $writefile

exit 0
