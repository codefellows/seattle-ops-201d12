#!/bin/bash

# Script Name:                  loops.sh
# Author Name:                  Roger Huba
# Date of latest revision:      10/27/2023
# Purpose:                      Demo loops
# Execution:                    bash loops.sh
# Additional Sources:           X

# Declaration of variables

var=0

# Declaration of functions

# Main

while [ $var -le 10 ]
do
    echo $var
    var=$((var+1))
done


# End
