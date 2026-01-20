#!/bin/bash

if (( $# < 6 )); then
    echo "Usage: $0 <name> <age> <num1> <num2> <dir> <file>"
    exit 1
fi

arithmetic() {
    local name=$1
    local age=$2
    local a=$3
    local b=$4

    echo "Name: $name"
    echo "Age : $age"

    if (( age >= 18 && age <= 100 )); then
        echo "Status: Adult"
    elif (( age > 100 )); then
        echo "Status: Out of range"
    else
        echo "Status: Child"
    fi

    echo "Addition: $(( a + b ))"
    echo "Subtraction: $(( a - b ))"
    echo "Multiplication: $(( a * b ))"

    if (( b != 0 )); then
        echo "Division: $(( a / b ))"
        echo "Remainder: $(( a % b ))"
    fi

    for (( i=1; i<=10; i++ )); do
        echo "$a * $i = $(( a * i ))"
    done
}
sleep 2

filecheck() {
    local dir=$1
    local file=$2
     
    if [ ! -d "$dir" ]; then
	echo "dir. not exist. cresting $dir"
        mkdir -p "$dir"
    else
	echo "dir. exist"    
    fi

    if [ ! -f $dir/$file ];then
         echo "file not exist. cearting $file"
	 touch "$dir/$file"
    else
	 echo "file exist"
    fi
}

arithmetic "$1" "$2" "$3" "$4"
filecheck "$5" "$6"

echo "Week-01 completed"

