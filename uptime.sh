#!/bin/bash
# uptime.sh
# get uptime from /proc/uptime

uptime=$(</proc/uptime)
uptime=${uptime%%.*}

seconds=$(( uptime%60 ))
minutes=$(( uptime/60%60 ))
hours=$(( uptime/60/60%24 ))
days=$(( uptime/60/60/24 ))

if [ $days == 0 ] && [ $hours -gt 0 ]; then
	echo "$hours:$minutes"
elif [ $days == 0 ] && [ $hours == 0 ]; then
	echo "$minutes min"
elif [ $days -gt 0 ]; then
	echo "$days days, $hours:$minutes" 
fi
