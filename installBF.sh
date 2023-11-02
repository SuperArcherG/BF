#!/bin/bash

# Ensure the script is being run as root or with sudo
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

if test -f /usr/local/bin/bf; then
    sudo rm /usr/local/bin/bf
fi

if test -L /usr/bin/bf; then
    sudo rm /usr/bin/bf
fi

# Set the installation directory (change this if needed)
install_dir="/usr/local/bin"

# Set the script names and destinations
script_name="bf.py"
install_script_name="bf"
script_destination="$install_dir/$install_script_name"

# Copy the Python script to the installation directory
cp "$script_name" "$script_destination" || { echo "Failed to copy script."; exit 1; }

# Make the script executable
chmod +x "$script_destination" || { echo "Failed to make script executable."; exit 1; }

# Create a symbolic link in a directory listed in the PATH
ln -s "$install_dir/$install_script_name" "/usr/bin/$install_script_name" || { echo "Failed to create symbolic link."; exit 1; }

echo "Installation successful. You can now use 'bf' to run your Brainfuck interpreter."
