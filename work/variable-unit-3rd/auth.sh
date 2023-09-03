#!/bin/bash 
count=0
check=true 
while [ $check == "true" ]
do
 read -p "Enter the username: " user
 read -p "Enter the passwd  : " pass

 if [ $user == root ] && [ $pass == redhat ]
  then
   echo -e "Welcome $user \n"
   check=false 
 else
   echo -e "Invalid Login \n"
   sleep 2 
   count=$[$count + 1]
   if [ $count -eq 3 ]
    then
     clear 
     check=true 
     count=0
   fi
 fi
done
