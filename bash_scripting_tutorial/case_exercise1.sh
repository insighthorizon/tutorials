#!/bin/bash
#A bash script which will print a message based upon which day of te week it is


if [ $# -eq 0 ]; then
    OFFSET=0
else
    OFFSET=$1
fi


DAYOFWEEK=`date +%a --date="$OFFSET days"`

case $DAYOFWEEK in
    Po)
	echo "Je pondělí"
	;;
    Út)
	echo "Je úterý"
	;;
    St)
	echo "Je středa"
	;;
    Čt)
	echo "Je čtvrtek"
	;;
    Pá)
	echo "Je pátek"
	;;
    *)
	echo "Něco se podělalo"
	;;
esac
