#!/bin/bash
#this is day-17 : Monitoring in bash 



LOG="./basic_monitoring_file.log"




log(){
	echo "$(date '+%Y%m%d %H:%M:%S') -$1 " >> "$LOG" 2>&1
}

echo "-----------------------------------------------------------------" >> "$LOG"
log "monitoring started"


disk_lmt="80"
mem_lmt="80"
service="sshd"
#read -p "Enter the service name you want to monitor: " service

# CHECK THE DSIK USAGE 

disk_usage=$( df / | awk ' NR==2 {print $5} ' | tr -d '%')  #tr -d Delete the given character(s) "%"

if [[ "$disk_lmt" -le "$disk_usage" ]]; then
	log " Warning : disk_usage is very high" 
else 
	log " "disk_usage" is fine "

fi

#CHECK THE RAM USAGE

mem_usage="$( free | awk '/MEM:/ {print  "% . 0 f", $3/$2 * 100} '  )"  

if [[ $mem_lmt -le "$mem_usage" ]] ; then
	log " Warning : mem_usage is very high "
else
	log " mem_usage is fine "
fi

#CHECK THE SERVICE PROGRESS

if pgrep "$service" >/dev/null ;then
	log "$service is runnig "
else
	log "ALERT : $service is not running "
fi

log "monitoring finished "

echo "****************************************" >> "$LOG"

echo "done "




