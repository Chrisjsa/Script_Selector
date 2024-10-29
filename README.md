# Script Menu for Executing Bash Scripts

This repository contains a Bash script that allows you to execute other `.sh` scripts located in the same directory without having to type their names manually. This readme provides instructions to set up and use the script effectively.

## Features

- Displays a menu of `.sh` files in the current directory.
- Allows users to execute a selected script by entering a number.
- Excludes its own name from the list of scripts.

## Getting Started

Follow these instructions to set up and run the script:

### 1. Clone the Repository

If you haven't already cloned this repository, do so using:

git clone https://github.com/your_username/your_repository.git
cd your_repository

### 2. Edit the script menu.sh

SSH_DIRECTORY="/scripts_location/" (Change this is mandatory to use)
SCRIPT_NAME="menu.sh" (Change this is optional)

### 3. Make the Script Executable

Make the script executable with:

chmod +x menu.sh

### 4. Move the Script to a Global Location

To use the script from anywhere, move it to a directory that is included in your `PATH`, such as `~/bin`:

mkdir -p ~/bin
mv menu.sh ~/bin/

### 5. Ensure `~/bin` is in Your PATH

Check if `~/bin` is in your `PATH`:

echo $PATH

If it's not included, add it by editing your shell configuration file (e.g., `~/.bashrc` or `~/.zshrc`):

nano ~/.bashrc

Add the following line at the end of the file:

export PATH="$HOME/bin:$PATH"

After editing the file, save and exit, then apply the changes:

source ~/.bashrc

### 6. Run the Script

Now you can run your script from anywhere in the terminal by typing:

menu.sh

## Usage

After running `menu.sh`, you will see a list of all `.sh` scripts in the directory. Enter the number corresponding to the script you want to execute, or enter 'q' to quit.

