#!/bin/bash
#this is day 12: Signal and Background process in Bash.


cleanup(){
	echo "Recived Termination  signal. cleanup is starting.."
	echo "Backgorund process is terminated  successfully"
	exit 0
      }

      trap cleanup "INT" "TERM"      # when  (ctl+c) OR termination signal recived only then cleanup() function runs. 

echo "background process is starting"
      long_task() {
	     while true ;
	        do
		      echo "hello my friend"
		      sleep 2
		      
	        done
                      }

# &-means run in background and "&" run in foreground.   
long_task &


# Store the process ID of the last background command.
PID="$!"


echo "backgound process is running PID: "$PID".. "

echo "Press ctl+c OR kill "$PID". "



wait $PID





