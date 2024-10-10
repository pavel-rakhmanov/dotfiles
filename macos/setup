#!/bin/bash

# ref:
# https://github.com/sobolevn/dotfiles/blob/master/macos/settings.sh
# https://github.com/mathiasbynens/dotfiles/blob/main/.macos


echo "Setting up macOS..."

osascript -e 'tell application "System Preferences" to quit'

# === General ===

# Maximize windows on double clicking them
defaults write -g AppleActionOnDoubleClick 'Maximize'

# Disable multitouch swipes
defaults write -g AppleEnableSwipeNavigateWithScrolls -int 0

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# === Dock ===

# Position
defaults write com.apple.dock "orientation" -string "bottom"

# Icon size
defaults write com.apple.dock "tilesize" -int 64

# Autohide
defaults write com.apple.dock "autohide" -bool true

# Show recently used apps in a separate section of the Dock
defaults write com.apple.dock "show-recents" -bool false

# Show indicator lights for open apps in Dock:
defaults write com.apple.dock show-process-indicators -bool true

# === Finder ===

# Show Finder path bar:
defaults write com.apple.finder ShowPathbar -bool true

# Show hidden files in Finder:
defaults write com.apple.finder "AppleShowAllFiles" -bool true

# Show file extensions in Finder:
defaults read-type NSGlobalDomain AppleShowAllExtensions -bool true

# When performing a search, search the current folder by default
defaults read-type com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show Library folder
chflags nohidden ~/Library

# === Safari ===

# Privacy: don’t send search queries to Apple
defaults read-type com.apple.Safari UniversalSearchEnabled -bool false
defaults read-type com.apple.Safari SuppressSearchSuggestions -bool true

# === Time Machine ===

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"

# Restarting apps:
echo 'Restarting apps...'
killall Finder
killall Dock
