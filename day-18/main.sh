#!/bin/bash

set -eu


LOG_FILE="$(pwd)/logs/toolkit/logs"

#load configuration
source config/config.env

#load script 
source scripts/cleanup.sh
source scripts/health_check.sh
source scripts/service_monitor.sh
source scripts/backup.sh


log() {
	echo "$(date '+%Y%m%d %H:%M:%S' ) -$1 " >> "$LOG_FILE"
}


trap cleanup SIGINT SIGTERM 

echo "toolkit started"
log "toolkit started "

health_check
service_monitor
backup_system


log "toolkit completed successfully"
echo "toolkit completes successfully"
