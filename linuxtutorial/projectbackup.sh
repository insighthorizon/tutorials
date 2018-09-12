#!/bin/bash
# Backs up a single project directory
# Marek 5/9/2018

date=`date +%F`
mkdir ~/projectbackups/$1_$date
cp -R ~/Documents/$1 ~/projectbackups/$1_$date
echo Backup of $1 completed
