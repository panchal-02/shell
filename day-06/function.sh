#!/bin/bash
#this is day-06 of bash scripting



# today we are using function calling in bash 


greet_user() {
	echo "hello $1"
} 


add_num() {
	echo "sum : $(( $1 + $2))" 
}
check_file() {
    if	[ -f "$1" ]; then
       	echo "file exit"
else 
	echo "file doesnot exit"
    fi
}
greet_user "pawan"
add_num 2131 2342
check_file "/etc/passwd"
check_file "/home/day-09"
