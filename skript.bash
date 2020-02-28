#!/bin/bash

########################
# Scriptname: skript.bash
# Author: Nitinan Keel
# Description: Script for exersice 6
# Getting numbers of characters from script arguments
# Argument count greater than 0
# Conatcs:  https://github.com/Nitinankeel
#           nitinan@nitinankeel.ch
#------
# Change log:
# Date  		Programmer 		Description
# 17.02.2020 	Nitinan Keel	Script init
########################

#########################
# Global variable section

# Scripts exits on error
set -o errexit

# Setting combinedLine to global variable
combinedLine=0
#########################

#########################
# Script section

# Checking if script args are null
if [ -z "$*" ];
then
	# Throw error
	echo "Bitte mindestens ein Wort angeben!"
	exit 1
else
	# Foreach arguments
	for i in $*;
		do
			# Get character count of argument
			lineNumber=$(printf $i | wc -m);
			# Output character count and argument
			echo "$i: $lineNumber Zeichen";
			# Adding current argument count to older count for combined character count
			combinedLine=$(($combinedLine + $lineNumber));
		done
# Output combined argument character count
echo $combinedLine Zeichen insgesamt;
fi
#########################
