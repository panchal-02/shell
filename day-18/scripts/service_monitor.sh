#!/bin/bash
  

service_monitor() {
	if systemctl list-unit-files | grep -q "$service"; then 
		if pgrep "$service" > /dev/null; then
			log "ok: $service is running"
		else 
			log "ERROR: $service is not running"
		fi
	else
		log "ALERT: $service is not installed"
	fi 
}

