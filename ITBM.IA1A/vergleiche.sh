#!/bin/bash

# ================================================
# Scriptname:   vergleiche.sh 
# Author:       Nitinan Keel
# Description:  Compares 2 numbers if one is greater or less
# Conatcs:      https://github.com/Nitinankeel
#               nitinan@nitinankeel.ch
# Current Ver:  0.0.0.1
#------
# Change log:
# Date          Programmer      Description             Version
# 10.06.2020    Nitinan Keel    Script Init             0.0.0.1
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
if [[ $# -ne 2 ]] ; then
	echo "you stupid...
2 arguments expected...
...but you entered $# :(
My disappointment is immeasurable, and my day is ruined...
exiting with exit code 1"
	exit 1
fi

# Check if argument is a number
if ! [[ ( $1 =~ $regex ) && ( $2 =~ $regex ) ]] ; then
	echo "One or multiple arguments are not numbers...
exiting with exit code 1"
	exit 1
fi

if (( $1 > $2 )) ; then
    echo "$1 is greater than $2"
elif (( $1 == $2 )) ; then
    echo "$1 is equals $2"
else
    echo "$1 is less than $2"
fi
# ===================================================
# End section
exit 0
# ===================================================
