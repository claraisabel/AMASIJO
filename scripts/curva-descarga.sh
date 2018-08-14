
#!/bin/sh

if [ $# -lt 1 ]; then

echo "Indica el archivo log2 como argumento"
exit
fi

LOG2="$1"


echo "Logging data to $LOG2"

:>"$LOG2"
while true; do
VOUT=$(lifepo4wered-cli get vout)
echo $VOUT >> "$LOG2"
sync
echo "Read $VOUT"
sleep 2m
done

