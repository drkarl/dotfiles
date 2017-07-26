#!/usr/bin/env bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions# Install hammerspoon

brew cask install hammerspoon

# Awesome Hammerspoon configuration
git clone --depth 1 https://github.com/ashfinal/awesome-hammerspoon.git ~/.hammerspoon

casks=(
  amethyst # Autoresize window
  basictex # For LaTex support / convert to PDF with Pandoc
  bettertouchtool # Customize touch
  daisydisk # Disk usage visualizer
  dash # API documentation browser
  docker # Containers
  evernote # Notes
  flux # change screen color at sunset
  google-chrome
  google-chrome-canary
  iterm2 
  itsycal # Calendar
  jumpcut # Clipboard buffering
  keka # Archiver tool
  macpass # KeePass GUI client
  malwarebytes-anti-malware
  outguess #Steganography
  postman # REST Client
  spectacle # maximize to screen
  sublime-text3 # Text eitor
  veracrypt # Encryption
  virtualbox # Virtual images
  vlc # Media player
)

brew install "${casks[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
