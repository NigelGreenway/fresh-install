## A collection of my dev tools
# Development tools

# prereq's
brew install gnutls
brew install cmake

# git++-
brew install git

# Terminal based apps
brew cask install iterm2
brew cask install Macvim
brew install trash
brew install terminal-notifier # https://github.com/alloy/terminal-notifier/blob/master/README.markdown
brew install zsh
brew install coreutils
brew install irssi
brew install task
sudo brew cask install vagrant
sudo brew cask install virtualbox

# Reference tools
sudo brew cask install colors

# Ruby tools
sudo brew cask install jewelrybox
curl -L https://get.rvm.io | bash -s stable --ruby --rails
source ~/.rvm/scripts/rvm
rvm --default use system

# Node tools
brew install node

# MySql
sudo brew cask install sequel-pro
brew install mysql
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

# Install editors
sudo brew cask install sublime-text3
echo "Setup Sublime text"
echo "Add license key"
read

sudo brew cask install textmate2 # open license key file
echo "Add license key"
