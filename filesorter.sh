#!/bin/sh
read -p  "Please provide the absolute path of the file" filename
if [ -e $filename ]
then
	sort $filename|uniq|nl>"$1"

else
	echo "No such file exists."
fi
