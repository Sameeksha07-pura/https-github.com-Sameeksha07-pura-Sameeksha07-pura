echo -n "Enter the password:" 
stty -echo
read p1
stty echo
echo -n "Enter confirmed password:"
stty -echo
read p2
stty echo
while [ "$p1" != "$p2" ]
do
echo -n "The password does not matching re-entered the password:"
stty -echo
read p2
stty echo
done
clear
echo -n "*********Terminal locked*********"
echo -n "Enter the password to unlock the terminal:"
stty -echo
read p3
stty echo
while [ "$p1" != "$p3" ]
do
echo -n "The password does not matching re-entered the password:"
stty -echo
read p3
stty echo
done
echo -n "*********Teminal unlocked***********"

