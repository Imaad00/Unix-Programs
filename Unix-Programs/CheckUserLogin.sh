#!/bin/bash
echo "Enter the login name of the user:"
read lname
getent passwd|grep '/home'|cut -d ":" -f 1 >s
who=$(whoami)
res=$(grep -o "$lname" s|head -1)
if [ "$res" == "$who" ]
then
echo "$lname has logged in and is a valid user."
else
echo "$lname has not logged in."
fi