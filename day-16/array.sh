#!/bin/bash
#this is Day-16: Array opertion in Bash



#normal variable
name="iron man"" spider man"
for i in $name; do
       echo "$i"
done
echo "*********************************"


#array
names=("iron man" "spider man")
for i in "${names[@]}"; do    #[@] = for all 
    echo "$i"
done
echo "*********************************"

echo "${names[0]}"   # 0 = first value
echo "${names[1]}"   # 1 = second value
                     # and so on 
echo "*********************************"



read -p "Enter your number:" -a num  # -a : means now num is an array

a=${num[0]}
b=${num[1]}
echo "${num[@]}"
echo "*********************************"
echo "$a"
echo "$a"
echo "*********************************"

echo "SUM: $(($a + $b)) " 
