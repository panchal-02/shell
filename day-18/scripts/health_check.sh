#!/bin/bash


health_check() {

	local disk_usage
	local mem_usage

disk_usage=$( df / | awk 'NR==2 {print $5 } ' | tr -d % )
mem_usage=$( free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100} ' )

if [[ disk_usage -ge disk_lmt ]]; then
	log "WARNING: disk usage is high = "$disk_usage" "
else 
	log "ok: dsik usage is "$disk_usage" "
fi


if [[ mem_usage < mem_lmt ]]; then
        log "WARNING: mem. usage is high = "$mem_usage" "
else
        log "ok: mem. usage is "$mem_usage" "

fi
		} 
