#!/bin/bash



echo "Printing  Table by using loop "
  
read -p "Enter the number :" num

   echo "here is your answer by using for loop"
    for i in {1..10};do
	    echo " $num * $i =$(( num*i))  "
	    sleep 0.5
done

echo "Printing Table by using while loop"
read -p "Enter your number : " y
count=1
while
	[ $count -le 10 ] ; do
	 result=$(( y*count ))
          echo " $y * $count = $result"
           ((count++))
	  sleep 0.5
done

echo "end ..........."
