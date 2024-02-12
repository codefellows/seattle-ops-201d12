#!/bin/bash

# Script Name:                  add.sh
# Author Name:                  Roger Huba
# Date of latest revision:      10/25/2023
# Purpose:                      add 2 numbers
# Execution:                    bash add.sh or ./add.sh chmod -x add.sh

# Declaration of variables

num1=20
num2=40

# Declaration of functions

add_two_numbers() {
  sum=$(($num1+$num2))
  echo $sum
}

# Main

add_two_numbers
add_two_numbers
add_two_numbers
# End
