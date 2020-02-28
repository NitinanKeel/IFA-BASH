#!/bin/bash

########################
# Scriptname: fib.bash
# Author: Nitinan Keel
# Description: Script for exersice 6.3
# Getting the fibonacci squence
# Conatcs:  https://github.com/Nitinankeel
#           nitinan@nitinankeel.ch
#------
# Change log:
# Date  		Programmer 		Description
# 18.02.2020 	Nitinan Keel	Script init
########################

#########################
# Global variable section

# Scripts exits on error
set -o errexit

n1=0
n2=1

#########################

#########################
# Script section

# Function calculating Fibonacci sequence
get_fibsequence () {
for i in $(seq $1)
    do
        if [ $i -eq 1 ]; then
            echo "1"
        elif [ $i -eq 2 ]; then
            echo "1"
            n1=$n2
        else
            temp=$(($n1 + $n2 ))
            n1=$n2
            n2=$temp
            return "$n2"
        fi
    done
}

if [ -z "$*" ]; then
    echo "No User Input!"
    exit 1
elif [ $# -ne 1 ]; then
    echo "Only 1 argument required!"
    exit 1
elif ! [[ $* =~ ^[0-9]+$ ]]; then
    echo "Argument is not a number!"
    exit 1
else
    echo "Arguments are valid..."
    echo "Proceeding ..."
    get_fibsequence "$1"
    exit 0
fi