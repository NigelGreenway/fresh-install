## Install applications first.
##

# Stop if something fails
set -e

# Ensure we start in the user's home directory
cd ~

# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# homebrew-cask apps directory
sudo mkdir /opt

# Hide it!
sudo chflags hidden /opt

# Install homebrew-cask for easily installing application binaries
brew tap phinze/homebrew-cask

brew install brew-cask