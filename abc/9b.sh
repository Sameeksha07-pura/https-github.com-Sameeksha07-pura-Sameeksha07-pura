#9b. Write a shell script that folds long lines into 40 columns. Thus any line that exceeds 40
#characters must be broken after 40th, a “/” is to be appended as the indication of folding and
#processing is to be continued with the residue. The input is to be supplied through a text file
#created by the user.
echo -n "Ente the file name:"
read fname
if [ -f $fname ]
then
	n=40
	while read line
	do
		l=`expr length "$line"`
		if [ $l -le $n ]
		then
			echo $line
		else 
			s=1
			e=$n
			echo "`echo $line | cut -c $s-$e` \\"
			rcl=`expr $l - $e`
			while [ $rcl -ge $n ]
			do
				s=`expr $e + 1`
				e=`expr $e + $n`
				echo "`echo $line | cut -c $s-$e` \\"
				rcl=`expr $l - $e`
			done
			s=`expr $e + 1`
			echo $line | cut -c $s-
		fi
	done < $fname
else
	echo "$fname:No such file"
fi
