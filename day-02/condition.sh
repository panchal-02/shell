
  #!/bin/bash

# Day-02: Input validation with conditionals

read -p "Enter your name: " name
sleep 1

read -p "Enter your gender (male/female): " gender
sleep 1

read -p "Enter your age: " age
sleep 1

read -p "Enter your height (in cm): " height
sleep 1

echo "wait Your answer "
sleep 5

#  Age & Gender measurement 
if [[ "$gender" == "male" ]];then
     if (( age <= 18 )); then
          echo "You are a child"
     elif (( age > 18 && age < 50 )); then
            echo "You are young"
     else
            echo "You are old" 
     fi

elif [[ "$gender" == "female" ]] then
    if (( age <= 18 )); then
         echo "You are a child"
    elif (( age > 18 && age < 50 )); then
           echo "You are young"
    else
        echo "You are old"
     fi
fi

sleep 2

# Height & Gender measurement
if [[ "$gender" == "male" ]]; then
    if (( height > 100 )); then
        echo "You are tall"
    else
        echo "You are short"
    fi

elif [[ "$gender" == "female" ]]; then
    if (( height > 90 )); then
        echo "You are tall"
    else
        echo "You are short"
    fi

else
    echo "Invalid input"
fi

echo "End....."

 
  









