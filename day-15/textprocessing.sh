#!/bin/bash
#this is day-15: text processing in Bash


# pipe '|' command: Take output of command1 and give it to command2
#grep: grep searches for lines that match a word or pattern.

disk=$( df -h | grep /dev )
echo "$disk"




# Output '>': Save output of ls into files.txt. it overwrite.
#source >/>> destiny
ls > ./file.txt

# Append output >> : meaning add to file, don't overwrite.
echo "hello" >> ./file.txt

#Input '<': read input from source instead of keyboard/input 
#destiny < source
sort < /etc/passwd

echo "**********************************************"
#cut : cut extracts columns from structues test 
#-d ":" is delimiter (only print before : )
#sort : arrange in order
#uniq : remove duplicates item
cut -d ':'   -f1 /etc/passwd | sort | uniq

echo "----------------------------------------------"
#awk:pattern-scanning and text-processing language
#syntax:- awk 'pattern { action }' file

df -h | awk '  NR==4 {print $1, $2, $5 }'  
echo "--------------------------------------"


#sed :stands for stream editor. It processes text line by line, applies transformations, and writes the result to stdout.
# s → substitute
# g → replace all occurrences

cat /etc/passwd | grep root | sed 's/root/ROOT/g'

echo "*******************************************"

cat /etc/passwd | awk ' NR==1 {print $0}' | cut -d ':' -f1 | sed 's/root/ROOT/g' >> ./final.txt 


