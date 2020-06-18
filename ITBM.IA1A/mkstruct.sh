#!/bin/bash

# ================================================
# Scriptname:	mkstruct.sh
# Author:	Nitinan Keel
# Description: 	Creating a folderstructure
# Conatcs:  	https://github.com/Nitinankeel
#           	nitinan@nitinankeel.ch
# Current Ver:	0.0.0.1
#------
# Change log:
# Date  	Programmer 	Description		Version		
# 18.06.2020 	Nitinan Keel	Script init		0.0.0.1
# ==================================================

# ==================================================
# Global variable section

# Scripts exits on error
set -o errexit
# ==================================================

# ==================================================
# Script section

rootDir=$1
dirCount=0

while (( $2 > dirCount ))
do
	((dirCount++))
	mkdir -p ${rootDir}/Block${dirCount}/{aufgaben,loesungen}
done

# ===================================================
# End section

# ===================================================