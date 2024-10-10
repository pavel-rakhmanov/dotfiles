#!/bin/bash

# ref:
# - https://github.com/sobolevn/dotfiles/blob/master/Brewfile
# - https://github.com/mathiasbynens/dotfiles/blob/main/brew.sh
# - https://github.com/volny/dotconfig/blob/master/Brewfile

. ../bash/helpers.sh

if ! is_command_installed "brew"; then
    echo "Brew is not installed. Installing Brew..."

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Brew is already installed. Updating Brew..."

    brew update
fi

# Save Homebrew’s installed location
BREW_PREFIX=$(brew --prefix)

# Upgrade any already-installed formulae
brew upgrade

# Display directories as trees (with optional color/HTML output)
brew install tree
# Mac App Store command-line interface https://github.com/mas-cli/mas
brew install mas

# brew install --cask firefox
# brew install --cask docker
# brew install --cask google-chrome
# brew install --cask transmission
# brew install --cask slack
# brew install --cask visual-studio-code
# brew install --cask zoom

# Remove outdated versions from the cellar
brew cleanup