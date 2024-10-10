#!/bin/bash

function create_symlink() {
    local TARGET="$1"
    local SOURCE="$2"

    if [ -e "$TARGET" ]; then
        echo "File already exists: $TARGET"
        exit 1
    else
        ln -s "$SOURCE" "$TARGET"
        echo "Symbolic link created: $TARGET -> $SOURCE"
    fi
}

function is_command_installed() {
    command -v "$1" > /dev/null 2>&1
}
