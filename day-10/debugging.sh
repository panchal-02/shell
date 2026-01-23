#!/bin/bash
#this is day 10: Debugging in bash

set -x   #print every command 0r enable debugging
set -e   #stops script at first-errro

#argument check

if (( "$#" != 1 )); then
	echo "Usage: bash $0 <directory> "
	exit 1
fi

dir="$1"

#checking directory 

if [ ! -d "$dir" ]; then
        echo "directory does not exist. creating "$dir""
	mkdir "$dir"
	touch  "$dir/test_file.txt"
else 
	echo "directory is present: "$dir" "
fi

set +x  #disable debugging

echo "script completed successfully"
exit 0


