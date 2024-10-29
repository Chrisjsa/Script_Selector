#!/bin/bash

SSH_DIRECTORY="/scripts_location/" # Change this is mandatory to use
SCRIPT_NAME="menu.sh" # Change this is optional

cd $SSH_DIRECTORY

# Get the list of .sh files in the set directory
FILES=(*.sh)

# Exclude the current script from the list
# FILES=(${FILES[@]/./})  # Remove the script itself (menu.sh)

# Display the menu
echo "Select Script"

# Show options
for i in "${!FILES[@]}"; do
    if [[ "${FILES[i]}" != "$SCRIPT_NAME" ]]; then
        echo "$i) ${FILES[i]}"
    fi
done

# Read the user's choice
read -p "Enter the number corresponding to the option (or 'q' to quit): " choice

# Check if the user wants to quit
if [[ "$choice" == "q" ]]; then
    echo "Exiting..."
    exit 0
fi

# Verify if the selected option is valid
if [[ $choice =~ ^[0-9]+$ ]] && [ "$choice" -ge 0 ] && [ "$choice" -lt "${#FILES[@]}" ]; then
    # Execute the selected file
    bash "${FILES[$choice]}"
else
    echo "Invalid option."
fi