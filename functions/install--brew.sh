# Stop if something fails
set -e

# Ensure we start in the user's home directory
cd ~

echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile

# Install homebrew
if [ ! -d "/usr/local/Cellar" ]; then
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    brew update && brew upgrade brew-cask && brew cleanup
    brew doctor
fi

# homebrew-cask apps directory
if [ ! -d "/opt" ]; then
    sudo mkdir /opt
fi

# Hide it!
sudo chflags hidden /opt

# Install homebrew-cask for easily installing application binaries
if [ "brew tap | grep phinze/homebrew-cask" ]; then
    brew tap phinze/homebrew-cask
fi

if [ "brew list | grep brew-cask" ]; then
    brew install brew-cask
fi

echo 'Brew and Brew-cask has finished installing...'
