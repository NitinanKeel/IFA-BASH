#!/bin/bash

# ================================================
# Scriptname:	mkscript.sh
# Author:	Nitinan Keel
# Description: 	Script for exersice 1.5
# 			creating a file with parameter
# Conatcs:  	https://github.com/Nitinankeel
#           	nitinan@nitinankeel.ch
# Current Ver:	0.0.0.1
#------
# Change log:
# Date  	Programmer 	Description		Version		
# 09.06.2020 	Nitinan Keel	Script init		0.0.0.1
# ==================================================

# ==================================================
# Global variable section

# Scripts exits on error
set -o errexit
# ==================================================

# ==================================================
# Script section

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
