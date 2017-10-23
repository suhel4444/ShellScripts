#!/bin/sh
searchword=$1
count=0
while read inputline
do
	inputline="$( echo $inputline | tr -d ".'()\"")"
	inputline="$( echo $inputline | tr "A-Z" "a-z") "
	searchword="$( echo $searchword | tr "A-Z" "a-z") "
	for word in $inputline
	do
		echo $word
		if [ $word = $searchword ]
		then
			count=$((count +1))
		fi
	done
done
echo $count

