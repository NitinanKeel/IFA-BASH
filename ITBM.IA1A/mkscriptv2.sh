#!/bin/bash

# ================================================
# Scriptname:	mkscript.sh
# Author:	Nitinan Keel
# Description: 	Script for exersice ??? ...don't know :(
#			It's on page 106 in this big a$$ powerpoint
#			checks the parameter and creates the file
# Conatcs:  	https://github.com/Nitinankeel
#           	nitinan@nitinankeel.ch
# Current Ver:	1.0.0.0
#------
# Change log:
# Date  	Programmer 	Description		Version		
# 09.06.2020 	Nitinan Keel	Script init		0.0.0.1
# 09.06.2020	Nitinan Keel	Add parametercheck	1.0.0.0	
# ==================================================

# ==================================================
# Global variable section

# Scripts exits on error
set -o errexit
# ==================================================

# ==================================================
# Script section

# Check for missing arguments because stupid people are stupid
# copied from Stackoverflow because I'm lazy
# But spent more time writing this comment than actually coding...
if [[ $# -ne 4 ]] ; then
	    echo "you stupid...
4 arguments expected...
...but you entered $# :(
My disappointment is immeasurable, and my day is ruined...
exiting with code 1"
	        exit 1
fi

# Creates whateva idc ¯\_(^^)_/¯
cat << EOF > $1
#!/bin/bash
# Name		:	$1
# Beschreibung	:	$2
# Autor		:	$3
# Verison	:	$4
# Datum		: 	`date +%Y%m%d`
# ====================================

EOF
vim $1 +
# ===================================================
# End section

# Nothing to see here...
# Bye!
# ===================================================
