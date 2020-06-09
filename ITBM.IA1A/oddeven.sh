#!/bin/bash

# ================================================
# Scriptname:   oddeven.sh
# Author:       Nitinan Keel
# Description:  Check if argument is odd or even
# Conatcs:      https://github.com/Nitinankeel
#               nitinan@nitinankeel.ch
# Current Ver:  0.0.0.1
#------
# Change log:
# Date          Programmer      Description             Version
# 09.10.2020	Nitinan Keel	Script init		0.0.0.1
# ==================================================

# ==================================================
# Global variable section

# Scripts exits on error
set -o errexit

# number regex
regex='^[0-9]+$'
# ==================================================

# ==================================================
# Script section
# Adding parameter check
if [[ $# -ne 1 ]] ; then
		    echo "you stupid...
1 arguments expected...
...but you entered $# :(
My disappointment is immeasurable, and my day is ruined...
exiting with exit code 1"
		    	        exit 1
fi

# Check if argument is a number
if ! [[ $1 =~ $regex ]] ; then
	   echo "Not a number...
exiting with exit code 1"
	   exit 1
fi

# Add parameter to variable for readability
number=$1

# Check if number is odd with mod
if (( $number % 2 )) ; then
	echo "odd"
else
	echo "even"
fi
# ===================================================
# End section
exit 0
# ===================================================
