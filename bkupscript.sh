#!/bin/bash

DATETIME=`date +%y%m%d-%H_%M_%S`
SRC=$1
DST=$2
GIVENNAME=$3
...
showhelp(){
Three parameters in the listed order: "
echo "\t- The full path for the folder or file you want to backup."
echo "\t- The name of the Space where you want to store the backup at (not the url, just the name)."
echo "\t- The name for the backup file (timestamp will be added to the beginning of the filename)\n"
}
