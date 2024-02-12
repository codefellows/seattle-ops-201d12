#!/bin/bash

# Script Name:                  Bash Conditionals Demo
# Author:                       Roger Huba
# Date of latest revision:      10/30/2023
# Purpose:                      A grocery list checker

# Array of items or grocery list items
grocery_list=("apples" "milk" "bread" "eggs")

# Function to check if an items is in the grocery list
is_item_in_list() {
  search_item="$1" # items I am looking for in my list
  for item in "${grocery_list[@]}"; do # for loop looping over the array
    # conditioal checking if the item matches the thing in the array
    if [ "$item" == "$search_item"]; then
      return 0 # Return True- Item was found in the list
    fi
  done
  return 1 # return False - Items was not found in the list
}


# Loop repeatedly ask for the user for items to check
while true; do
  # ask the user for input of an item to look for in the list
  read -p "Enter an item to check if it's on your grocery list.(or type 'done' to finish)" item_to_check

  # check if the user's input is "done"
  if [ "$item_to_check" = "done" ]; then
    break
  fi

  ## check if the items is in the grocery list using the function
  if is_item_in_list "$item_to_check"; then
    echo "Item '$item_to_check' is already on your grocery list."
  else

    read -p "'$item_to_check' is not on your list, do you want to add it? (yes/no)" add_item
    if [ "$add_item" = "yes" ]; then
    # Adds the items to the grocery Array
      grocery_list+=("$item_to_check")
      echo "'$item_to_check' added to your grocery list."

    # If not does nothing
    else
      echo "'$item_to_check' is not on your grocery list."
    fi
  fi
done

# Ask the user if they are ready to see their completed grocery list
read -p "Are you ready to see your completed grocery list? (yes/no)" show_list
if [ "$show_list" = "yes" ]; then
  echo "Your completed grocery list: "
  echo "${grocery_list[@]}"
else
  echo "Ok, you can check your list later."
fi

