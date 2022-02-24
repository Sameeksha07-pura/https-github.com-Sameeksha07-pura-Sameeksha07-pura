#4a. Write a shell script that accept one or more file names as argument and convert all of them
#to uppercase, provided they exists in current directory.
for i in $*
do 
if [ -f $i ]
then 
echo "______$i contents are ______"
cat $1 | tr "[a-z]" "[A-Z]"
echo "_______________________________"
else
echo"$i file doesnt exist"
fi
done
