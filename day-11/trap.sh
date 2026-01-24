#!/bin/bash
#this is day-11: trap for cleanup and signal handling


set -e

#print line number where script failed
trap ' echo "ERROR:script failed at "$LINENO" " ' ERR

TEMP_FILE="/temp/TEMP_FILE_TEST"
#function definition
cleanup(){
	echo "Cleanup started"

	if [ -f "$TEMP_FILE" ]; then
		rm -rf "$TEMP_FILE"
		echo "Temperory file removed"
	fi

}
#Trap cleanup on script exit or interruption INT= (CTL+C) 
#function calling
trap cleanup EXIT TERM INT


echo "creating temp file"
sudo touch "$TEMP_FILE"


echo "temperory file is created at: "$TEMP_FILE""
echo "press ctl+c to test tarp behaviour"

sleep 10



echo "script is completed"



