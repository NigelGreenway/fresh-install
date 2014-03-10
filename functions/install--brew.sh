# Stop if something fails
set -e

# Ensure we start in the user's home directory
cd ~

# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# homebrew-cask apps directory
if [ ! -d "/opt" ]; then
    sudo mkdir /opt
fi

# Hide it!
sudo chflags hidden /opt

# Install homebrew-cask for easily installing application binaries
brew tap phinze/homebrew-cask

brew install brew-cask

echo 'Brew and Brew-cask has finished installing...'
