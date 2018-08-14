#!/bin/sh

if [ $# -lt 1 ]; then
	echo "Indica el archivo de log como argumento"
	exit
fi

LOG="$1"

echo "Logging data to $LOG"

:>"$LOG"
while true; do
	VBAT=$(lifepo4wered-cli get vbat)
	echo $VBAT >> "$LOG"
	sync
	echo "Read $VBAT"
	sleep  2m
done
