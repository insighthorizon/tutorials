#!/bin/bash

# Create a simple script which will ask the suer for a few pieces of information
# Takes two arguments, $1 - simple word, $2 - lucky number
# Then combine this into a message which is echo'd to the screen



echo "\"STRONG\" PASSWORD CREATOR"
echo ============================


echo "Please enter what day of week is today (1-7):"
read WEEKDAY

echo "Please enter todays date in format MM DD:"
read MMONTH DDAY

echo "Who has name day in $WEEKDAY + $MMONTH days (without diacritics)?"
read NAMEDAY

echo "Result: $SECONDS$MMONTH$NAMEDAY$2$DDAY$1$WEEKDAY"

