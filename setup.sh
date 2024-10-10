#!/bin/bash

pwd=$(pwd)
directories=("brew" "git")

for directory in "${directories[@]}"; do
    echo "Setting up $directory..."
    
    cd "$directory"

    if [ -f "setup.sh" ]; then
        ./setup.sh
    fi

    cd "$pwd"
done
