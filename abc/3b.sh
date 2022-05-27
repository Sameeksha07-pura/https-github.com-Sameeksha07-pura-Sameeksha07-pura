#3b. Write a shell script to implement terminal locking (Similar to the lock command). It should
#prompt for the user for a password. After accepting the password entered by the user, it must
#prompt again for the matching password as confirmation and if match occurs, it must lock the
#keyword until a matching password is entered again by the user. Note the Script must be
#written to disregard BREAK, control-D. No time limit need be implemented for the lock
#duration.

echo -n "Enter the password:"

read pas1

echo -n "confirm password:"
stty -echo
read pas2
stty echo
while [ "$pas1" != "$pas2" ]
do
echo -n "Password does not match.Re enter the password:"
stty -echo
read pas2
stty echo
done
clear
echo "Lock"
echo "_______________Terminal locked___________"
echo -n "Enter the password to unlock:"
stty -echo
read pas3
stty echo
while [ "$pas1" != "$pas3" ]
do
echo -n "Password does not match.Re enter the password:"
stty -echo
read pas3
stty echo
done 
clear
echo "_______________Terminal unlocked___________"



