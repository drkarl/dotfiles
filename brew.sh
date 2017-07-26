#!/usr/bin/env bash

# Check if we are on MacOS X
if [ "$(uname)" != "Darwin" ]; then
    exit 1 # Not MacOS X
fi

#Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

#################################
# COMMENT/UNCOMMENT AS REQUIRED #
#################################

#BREW
brew install ack
#brew install aria2 # Download in parallel including bittorrent
#brew install asciinema # Record animations from the terminal
brew install coreutils # GNU core utils
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names
brew install cask # Cask
#brew install docker
#brew install git
brew install gnupg
#brew install googler # Google search API command line
#brew install gradle
#brew install htop # system monitoring
#brew install httpie # http tool
#brew install jq # JSON tool
#brew install jrnl # CLI Journal
#brew install kpcli # KeePass CLI
#brew install ledger # CLI Accounting system
#brew install pandoc # Convert between file formats
#brew install task # Taskwarrior
#brew install tasksh # Taskwarrior shell
#brew install the_silver_searcher # ag The silver searcher
brew install tmux
#brew install tor
#brew install torsocks
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install ssh-copy-id
#brew install weechat
brew install wget --with-iri
#brew install youtube-dl # Youtube downloader
brew install zsh
brew install zsh-completions

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

brew cleanup

#CASK

# Install hammerspoon
#brew cask install hammerspoon

# Awesome Hammerspoon configuration
#git clone --depth 1 https://github.com/ashfinal/awesome-hammerspoon.git ~/.hammerspoon

#brew cask install amethyst # Autoresize windows
#brew cask install basictex # For LaTex support / convert to PDF with Pandoc
#brew cask install bettertouchtool # Customize touch
#brew cask install daisydisk # Disk usage visualizer
#brew cask install dash # API documentation browser
#brew cask install docker # Containers
#brew cask install evernote # Notes
#brew cask install itsycal # Calendar
#brew cask install jumpcut # Clipboard buffering
#brew cask install keka # Archiver tool
#brew cask install macpass # KeePass GUI client
#brew cask install outguess #Steganography
#brew cask install postman # REST Client
#brew cask install sublime-text3 # Text eitor
#brew cask install veracrypt # Encryption
#brew cask install virtualbox # Virtual images
#brew cask install vlc # Media player
