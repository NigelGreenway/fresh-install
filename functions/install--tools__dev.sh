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
brew cask install Colours

# Ruby tools
sudo brew cask install jewelrybox
curl -L https://get.rvm.io | bash -s stable --ruby --rails
source ~/.rvm/scripts/rvm
rvm --default use system

# Node tools
brew install node

# MySql
sudo brew cask install sequel-pro

# Install editors
brew cask install sublime-text-3
ln -s /Users/whoami/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl # Link `subl` binary
echo "Setup Sublime text"
echo "Add license key"
read

brew cask install Textmate # open license key file
