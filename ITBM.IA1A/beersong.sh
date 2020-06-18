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

beerNumber=$1

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
