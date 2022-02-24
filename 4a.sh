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
