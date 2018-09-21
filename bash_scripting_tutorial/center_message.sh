#!/bin/bash
# Print message in center of terminal

cols=`tput cols`
rows=`tput lines`

message=$@
input_length=${#message} #input had to be firs assigned to variable otherwise we would get number of arguments instead number of chars

half_input_length=$(( $input_length / 2 ))

row_position=$(( $rows / 2 ))
col_position=$(( $cols / 2 - $half_input_length ))

tput clear #clear terminal

tput cup $row_position $col_position #cursor placement
tput bold #set bold font
echo $@ #print there what we wanted
tput sgr0 #turn off all the settings we just made
tput cup `tput lines` 0 #place the prompt at the bottom of the screen

