#!/bin/bash

#I want to know what permissions the script has as process. Does it have the permissions of the user running it?

if [ -r $1 ]; then
    echo I have a read permission for that file.
else
    echo I dont have a read permission for that file.
fi


#ok
