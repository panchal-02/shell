#!/bin/bash
 

#Day-03 Arithmetic operations in bash


read -p "Enter the first number : " a
read -p "Enter the second number : " b

echo "wait for your answer "
sleep 2
echo "addition = $((a+b))" 
sleep 0.5
echo "substraction = $((a-b))"
sleep 0.5
echo "multiplication = $((a*b))"
sleep 1


if (( b != 0))  
   then 
	   echo "division = $((a/b))"
	   echo "reminder = $((a%b))"
else
	echo "trying very hard "
	sleep 5
	echo "division and modulus is not possible "
  fi
  sleep 2
ssh -i "shell-key.pem" ec2-user@ec2-13-235-70-255.ap-south-1.compute.amazonaws.com
  echo "End ....."
