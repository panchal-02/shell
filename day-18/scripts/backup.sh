#1/bin/bash

source config/config.env
backup_system() {

	mkdir -p "$backup_dest"


	local backup_file="$backup_dest/backup _$(date '+%Y%m%d %H:%M:%S').tar.gz" 

	if tar -czf "$backup_file" "$backup_src" & >> "$LOG_FILE"; then
		log "backup created : $backup_file"
	else 
		log "ERROR: backup failed"
		return 1
	fi
} 

