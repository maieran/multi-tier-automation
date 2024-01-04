#!/bin/bash

# Script to gracefully halt all running Vagrant machines

# Check if Vagrant is installed
if ! command -v vagrant &> /dev/null; then
    echo "Vagrant is not installed. Please install Vagrant and try again."
    exit 1
fi

# Function to gracefully halt a Vagrant machine
halt_vagrant_machine() {
    local machine_id=$1
    echo "Halting Vagrant machine with ID: $machine_id"
    vagrant halt $machine_id
    if [ $? -eq 0 ]; then
        echo "Machine halted successfully."
    else
        echo "Failed to halt the machine with ID: $machine_id"
    fi
}

# Get a list of running Vagrant machines and halt them
for id in $(vagrant global-status --prune | grep running | awk '{print $1}'); do
    read -p "Do you want to halt the Vagrant machine with ID $id? (y/n): " answer
    case $answer in
        [Yy]* ) halt_vagrant_machine $id;;
        [Nn]* ) echo "Skipping machine with ID $id";;
        * ) echo "Invalid input. Skipping machine with ID $id";;
    esac
done

echo "Script completed."
