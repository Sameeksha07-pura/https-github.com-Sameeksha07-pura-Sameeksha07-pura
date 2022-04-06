if [ $# -eq 1 ]
then
	if [ -d $1 ]
	then
		set -- `ls -Rl $1 | tr -s " " | grep "^-" | cut -d " " -f 5,9- | sort -n | tail -n 1`
		echo "file name is $2"
		echo "File size is $1"
		exit
	else
		echo "Not a directory"
		exit
	fi
else
	echo "Enter a directory name"
fi
