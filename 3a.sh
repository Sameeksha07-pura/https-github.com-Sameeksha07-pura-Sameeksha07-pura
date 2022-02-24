#3a. Create a script file called file properties that reads a filename entered and outputs it
properties.
if [ -e $1 ]
then
set -- `ls -ld $1`
echo "permissions are:$1"
echo "File links count is:$2"
echo "user name is:$3"
echo "Group name is:$4"
echo "File size is:$5"
echo "Modification is done:$6 $7 and $8"
else
echo "file isnot found"
fi

