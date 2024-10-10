#!/bin/bash

. ../bash/helpers.sh

if ! is_command_installed "git"; then
    echo "Git is not installed. Installing Git via Brew..."

    brew install git
else
    echo "Git is already installed. Updating Git via Brew..."

    brew upgrade git
fi

files=(".gitconfig" ".gitignore_global")

for file in "${files[@]}"; do
    create_symlink "$HOME/$file" "$(pwd)/$file"
done