#!/bin/bash

# Script Name:                  Demo Function
# Author Name:                  Roger Huba
# Date of latest revision:      02/22/2024
# Purpose:                      Arrays Demo
# Execution:                    bash ./demo4.sh

# Visual of Data in Memory
# |___________________________|
# |xxx|xxx|x|xxxxxxxx|[xx,xxx]|
# |[xxx]|xxx|xxxxxxxx|[xx,xxx]|

# Declaration of variables
snacks=("3 Muskateers" "Heath Bars" "Twix" "Andys Mints")
# index     0               1          2         3
# Length = 4
# Index = 0-3

# Display the Index of the Snacks Array
dispay_array() {
  echo "The first snack in the the snacks array is: ${snacks[0]}" # -> 3 Muskateers
  echo "The first snack in the the snacks array is: ${snacks[1]}" # -> Heath Bar
  echo "The first snack in the the snacks array is: ${snacks[2]}"
  echo "The first snack in the the snacks array is: ${snacks[3]}"
  echo "The first snack in the the snacks array is: ${snacks[4]}"
}

dispay_array

# Add a Candy to the Snacks Array
new_snack="StarBursts"
snacks+=("$new_snack")

dispay_array
