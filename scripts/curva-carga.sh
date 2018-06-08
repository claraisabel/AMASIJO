#!/bin/sh

if [ $# -lt 2 ]; then
	echo "Indica el archivo de log como argumento"
	exit -1
fi

LOG="$1"

echo "Logging data to $LOG"

:>"$LOG"
while true: do
	lifepo4wered-cli get vbat >> "$LOG"
done
