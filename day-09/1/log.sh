#!/bin/bash
#This is day-09:Logging & Error Handling in Bash

log_file="script.log"


log(){
	echo "$(date '+%Y-%m-%d %H:%M:%S') -$1" >> "$log_file"

}


log "script started "

if [ $# -lt 1 ]; then
	log "ERROR: missing argument"
	echo "Usage: bash $0 <directory>"
	exit 1
fi


dir="$1"


if [ -d "$dir" ]; then 
	log "directory exist"
else
	log "directory does not exist. creating directory. $dir"
	if ! mkdir -p "$dir" >> "$log_file" 2>&1 ; then  

			log "ERROR: faild to create directory"
	                echo "ERROR: failed to create directory"
			exit 2
	fi
		
		
fi
 log "script complete successfully"
 echo "script complete successfully"
   

 exit 0
