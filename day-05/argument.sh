#!/bin/bash



#day-05command-line Arguments in bash
 
# Perform arithmetic operations using arguments
 
if  [ $# -lt 2 ]; then
	 echo " usage : $0 <first number> <second number> "
	exit 1
 fi


 a=$1
 b=$2
sleep 5

 echo "first number = $a"
 echo "second number = $b"
  
 sleep 2

echo "Here is your result"
sleep 1
echo "addition : $((a + b))"
sleep 2
echo "substraction : $((a - b))"
sleep 2
echo "multiplication :$((a * b))"
sleep 2

if (( b != 0 )); then 
	echo "division : $((a/b))"
  
else
       sleep 5	
	echo "division is not possible"
fi 
 echo "End ..."

