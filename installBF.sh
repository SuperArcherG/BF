#!/bin/bash
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
install_dir="/usr/local/bin"
script_name="bf.py"
install_script_name="bf"
script_destination="$install_dir/$install_script_name"
cp "$script_name" "$script_destination" || { echo "Failed to copy script."; exit 1; }
chmod +x "$script_destination" || { echo "Failed to make script executable."; exit 1; }
ln -s "$install_dir/$install_script_name" "/usr/bin/$install_script_name" || { echo "Failed to create symbolic link."; exit 1; }
echo "Installation successful. You can now use 'bf' to run your Brainfuck interpreter."
