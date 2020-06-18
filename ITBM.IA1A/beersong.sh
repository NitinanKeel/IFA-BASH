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
set -o errexit
# ==================================================

# ==================================================
# Script section

while (( $1 > 0 ))
do
echo "
$1 Flaschen Bier im Kühlschrank
$1 Flaschen Bier
Nimm eine raus
Trink sie aus
"
shift
done

# ===================================================
# End section
exit 0
# ===================================================
