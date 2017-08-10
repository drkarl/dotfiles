#!/usr/bin/env bash

# Check if we are on MacOS X
if [ "$(uname)" != "Darwin" ]; then
    echo "System is not MacOS X"
    exit 1 # Not MacOS X
fi

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade --all

#################################
# COMMENT/UNCOMMENT AS REQUIRED #
#################################

#BREW
basic=(
  ack
  aria2 # Download in parallel including bittorrent
  coreutils # GNU core utils
  moreutils
  findutils
  gnu-sed --with-default-names
  git
  htop
  tmux
  vim --with-override-system-vi
  grep
  openssh
  ssh-copy-id
  wget --with-iri
  zsh
  zsh-completions
)

brew install "${basic[@]}"

dev=(
  docker
  gradle
  httpie # http tool
  jq # JSON tool
  the_silver_searcher # ag The silver searcher
  hub #Github CLI
)

brew install "${dev[@]}"

utils=(
  asciinema # Record animations from the terminal
  jrnl # CLI Journal
  kpcli # KeePass CLI
  task # Taskwarrior
  tasksh # Taskwarrior shell
  youtube-dl # Youtube downloader
)

brew install "${utils[@]}"

extra=(
  googler # Google search API command line
  ledger # CLI Accounting system
  pandoc # Convert between file formats
  weechat
  mps-youtube
)

brew install "${extra[@]}"

security=(
  tor
  torsocks
  gnupg
)

brew install "${security[@]}"

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Remove outdated versions from the cellar
brew cleanup
