
#!/bin/bash
#this is day-09 : Backup script with logging

#Log File Definition

log_file="backup.log"

log(){   
	echo "$(date '+%Y%m%d %H:%M:%S') -$1" >> "$log_file"
                     }

#Argument cheak

if [ "$#" -lt 2 ];then
	log "ERROR: missing argument"
	echo "Usage: bash $0 <source> <back_up>"
	exit 1
fi

#Read Arguments

src="$1"
backup_dir="$2"
backup_file="$backup_dir/backup_$(date '+%Y%m%d %H:%M:%S').tar.gz"

#Start Logging the Backup
log "backup started"

#cheack source directory

if [ ! -d "$src" ] && [ ! -f "$src" ]; then
	log "ERROR: source directory/file does not exist: "$src""
	log "creating source directory: "$src""

	exit 2
fi

#creating backup directory if need 
 mkdir -p "$backup_dir" >>"$log_file" 2>&1

# create backup
tar -czf "$backup_file" "$src" >> "$log_file" 2>&1


if (($? != 0 ));then 
	log "ERROR: backup failed"
	exit 3
fi

log "backup completed successfully: $backup_file"
echo "backup completed: "$0""
exit 0

