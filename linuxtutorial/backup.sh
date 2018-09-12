#!/bin/bash
# This is my script for backing up directory into ~/mybackups
# Author: Marek Jiricek
# Date: 6/9/2018

# $1 - first argument is name of directory for backup
if [ $# != 1 ]; then
   echo Fail! - I accept exactly one argument!
   exit
fi
if [ ! -d ./$1 ]; then
    echo Fail! - You entered non-existing directory.
fi

name=`echo $1 | sed 's/\///g'`
date=`date +%F%T`
dir_name=$name$date

if [ -d ~/project_backups/$dir_name ]; then
    echo Backup for current date already exists. Overwrite?[y]
    read overwrite
    if [ $overwrite != 'y' ]; then
	exit
    fi
else
    if [ ! -d ~/project_backups ]; then
	mkdir ~/project_backups/
	chmod 750 ~/project_backups
    fi
fi

cp -R ~/$1  ~/project_backups/$dir_name
echo Backup of $1 completed!
echo You can find it in ~/project_backups/$dir_name








