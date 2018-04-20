#!/bin/bash
set -e

# Install pip
sudo easy_install pip

# Install homebrew
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update and install homebrew recipes
brew update
brew install bash-completion
brew install tree
brew install cask
brew install awscli
brew install vim
brew install htop
brew install wget

# Use cask to install GUI apps
brew cask install google-chrome
brew cask install iterm2

brew cleanup

# Setup iTerm
# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
