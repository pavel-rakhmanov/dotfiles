#!/bin/bash

. ../bash/helpers.sh

if ! is_command_installed "brew"; then
    echo "Brew is not installed. Installing Brew..."

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Brew is already installed. Updating Brew..."

    brew update
fi
