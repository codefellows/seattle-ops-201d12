#!/bin/bash
# This is the shebang line which tells the system that this script should be run with Bash, the Bourne Again SHell.


# Initialize an empty array named grocery_list
# declare -a grocery_list
grocery_list=("milk" "bread")
# Initializes an empty array named grocery_list. This is where the grocery items will be stored.

# Function to check if item is in grocery_list
check_and_add_item() {
    local item="$1"
    local found=0

    # Search item in grocery_list
    for i in "${grocery_list[@]}"; do
        if [[ "$i" == "$item" ]]; then # "" == "milk"
            found=1
            break
        fi
    done

    # If item not found, ask to add
    if [[ $found -eq 0 ]]; then
        read -p "'$item' not found in the grocery list. Do you want to add it? (y/n): " answer
        if [[ $answer == "y" ]]; then
            grocery_list+=("$item")
            echo "'$item' added to the grocery list."
        else
            echo "'$item' not added to the grocery list."
        fi
    else
        echo "'$item' is already in the grocery list."
    fi
}

# Main loop
while true; do
    read -p "Enter item to check or add to the grocery list (or 'done' to finish): " input
    if [[ $input == "done" ]]; then # does "done" == "done"
        break
    fi
    check_and_add_item "$input"
done

# Ask if user wants to display grocery list
read -p "Do you want to display the grocery list? (y/n): " display
if [[ $display == "y" ]]; then
    echo "Grocery list contents: ${grocery_list[@]}"
else
    echo "Grocery list display skipped."
fi
