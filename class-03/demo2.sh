#!/bin/bash

# Script Name:                  ops201-challenge03 - Functions
# Author Name:                  Roger Huba
# Date of latest revision:      02/21/2024
# Purpose:                      Run a function that adds 2 numbers
# Resources:
# to Execute "bash ./demo.sh"

# Declaration of variables

num1=25
num2=5

# Declare Function

add_two_numers() {
  local sum=$(($num1 + $num2)) # -> 30
  echo $sum # -> 30
}

add_two_numbers_part2() {
  local num1=$1
  local num2=$2
  local sum=$((num1 + num2))
  echo $sum
  return $sum
}


subtract_two_nubmers() {
  difference=$(($num1 - $num2))
  echo $difference # -> 20
}
# Main Execution

add_two_numers
# subtract_two_numers
result=$(add_two_numbers_part2 30 50)
echo "The sum of 30 and 50 is : $result"

