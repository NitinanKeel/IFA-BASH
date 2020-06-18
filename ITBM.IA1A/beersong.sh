#!/bin/bash

# ================================================
# Scriptname:   beersong.sh
# Author:       Nitinan Keel
# Description:  Sings a song
# Conatcs:      https://github.com/Nitinankeel
#               nitinan@nitinankeel.ch
# Current Ver:  0.0.0.1
#------
# Change log:
# Date          Programmer      Description             Version
# 18.06.2020    Nitinan Keel    Script init             0.0.0.1
# ==================================================

# ==================================================
# Global variable section

# Scripts exits on error
#set -o errexit
# ==================================================

# ==================================================
# Script section

# Adding parameter check
if [[ $# -ne 1 ]] ; then
	echo "
1 arguments expected...
...but you entered $#
exiting with exit code 1"
	exit 1
fi

# Check if argument is a number
if ! [[ $1 =~ $regex ]] ; then
	   echo "Not a number...
exiting with exit code 1"
	   exit 1
fi

# Setting argument to variable
beerNumber=$1

# Loop through song
while (( $beerNumber > 1 ))
do
    echo "
$beerNumber Flaschen Bier im Kühlschrank
$beerNumber Flaschen Bier
Nimm eine raus
Trink sie aus
"
    ((--beerNumber))
done

# Last line of song

echo "
1 Flasche Bier im Kühlschrank
1 Flasche Bier
Nimm sie raus
Trink sie aus
Der Kühlschrank ist leer ...
"

# ===================================================
# End section
exit 0
# ===================================================
