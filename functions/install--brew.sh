# Stop if something fails
set -e

# Ensure we start in the user's home directory
cd ~

echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile
source ~/.bash_profile

# Install homebrew
if [ ! -f "/usr/local/bin/brew" ]; then
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    brew prune
    brew update && brew cleanup
    brew doctor
fi

# homebrew-cask apps directory
if [ ! -d "/opt" ]; then
    sudo mkdir /opt
fi

# Hide it!
sudo chflags hidden /opt

# Install homebrew-cask for easily installing application binaries
if [[ ! $(brew tap | grep josegonzalez/homebrew-php) ]]; then
    brew tap josegonzalez/homebrew-php
fi

if [[ ! $(brew tap | grep phinze/homebrew-cask) ]]; then
    brew tap phinze/homebrew-cask
fi

if [[ ! $(brew tap | grep caskroom/versions) ]]; then
    brew tap caskroom/versions
fi

if [[ ! $(brew list | grep brew-cask) ]]; then
    brew install brew-cask
    brew upgrade brew-cask
fi

echo 'Brew and Brew-cask has finished installing...'
echo "$ERR"
