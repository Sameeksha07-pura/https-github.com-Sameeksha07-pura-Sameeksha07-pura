#2a. Write a shell script that accepts two filenames as arguments, checks if the permissions for
these files are identical and if the permissions are identical, output common permissions
otherwise output each filename followed by its permissions.
echo -n "Enter the first file name"
read f1
if [ -e $f1 ]
then 
set -- `ls -ld $f1`
f1perm=$1
else
echo "File does not exist"
exit
fi
echo -n "Enter the second file name"
read f2
if [ -e $f2 ]
then 
set -- `ls -ld $f2`
f2perm=$1
else
echo "File does not exist"
exit
fi
if [ $f1perm = $f2perm ]
then 
echo "File permisions are identical"
echo "Permision is $f1perm"
exit
else
echo "File permissions are not identical"
echo "f1 permissions is $f1perm"
echo "f2 permissions is $f2perm"
fi


