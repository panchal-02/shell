   
    #!/bin/bash


#day-03 loop in bash 

read -p "Enter you name : " name


echo "using for loop first method"
for ((i=0; i<10;))
do
  echo "print $i "
  ((i++))
  sleep 1
done

echo "---------------------------"

echo "using for loop second method "
for j in {10..20}; 
do
  echo "no. $j" 
  sleep 2
done


echo "--------------------------"
  

echo "using whlie loop"


count=0
 

while [ $count -le 10 ];
do 
	echo "print the no. $count"
	((count++))
sleep 1
done



