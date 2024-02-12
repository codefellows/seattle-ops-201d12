#!/bin/bash

# Script Name:                  array.sh
# Author Name:                  Roger Huba
# Date of latest revision:      10.26.2023
# Purpose:                      Demo array
# Execution:                    bash array.sh or ./array.sh chmod -x array.sh
# Additional Sources:           X

# Declaration of variables

snack="skittles"
#        index 0     index 1
snacks=("skittles" "pop tarts" "snickers" "tamales" "kit kat")

# Declaration of functions

echo ${snacks[0]}
echo ${snacks[4]}

echo $snack
