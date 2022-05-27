#9a. Write a shell script that accepts the filename, starting and ending line number as an
#argument and display all the lines between the given line number.

if [ $# -eq 3 ]
then
	if [ -f $1 ]
	then
		l=`wc -l $1`
		head -n $3 $1 | tail +$2
		else
		echo "Enter available $i is not a file"
         fi
         
   else
		echo "Enter the required argument"
		echo "Usage:Filename StartLine EndLine"
	fi
