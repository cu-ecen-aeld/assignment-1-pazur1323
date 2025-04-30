#!/bin/bash

filesdir=$1
searchstr=$2

if ! [ -d $filesdir ]; then
	echo "Path $filesdir not found"
	exit -1
fi

if [ -z $filesdir ]; then
	echo "First parameter isn't specified"
	exit -1
fi

if [ -z $searchstr ]; then
	echo "Second parameter isn't specified"
	exit -1
fi

X="$(find $filesdir -type f | wc -l)"
Y="$(find $filesdir -type f | xargs grep $searchstr | wc -l)"

echo "The number of files are $X and the number of matching lines are $Y"

exit 0

	
