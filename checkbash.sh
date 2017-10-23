#!/bin/sh
grep -i "#!/bin" $1
if [ $? -eq 0 ]
then
	echo "A shell script"
else
	echo "not a script"
fi
