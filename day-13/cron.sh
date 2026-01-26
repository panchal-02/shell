#!/bin/bash
#this is day-13: Cron job hhealth check


log="/home/health.log"

echo "--health checkup is starting--$(date)" >>"$log" 2>&1

#cheak dish usage

df -h >>"$log" 2>&1

#check memory usage

free -m >>"$log" 2>&1


echo "$(date) --health checkup is ended" >>"$log" 2>&1

echo "-------------------------------------x------"


## for cronjob 
#step:1 crontab -e
#step:2 */1 * * * * <file-path>
#then wait for cron job to start
