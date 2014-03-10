## A collection of my dev tools
# Development tools

# prereq's
sudo brew install gnutls
sudo brew install cmake

# git++-
sudo brew install git

# Terminal based apps
sudo brew cask install iterm2
sudo brew cask install Macvim
sudo brew install trash
sudo brew install terminal-notifier # https://github.com/alloy/terminal-notifier/blob/master/README.markdown
sudo brew install zsh
sudo brew install coreutils
sudo brew install irssi
sudo brew install task
sudo brew cask install vagrant
sudo brew cask install virtualbox

# Reference tools
sudo brew cask install Colours

# Ruby tools
sudo brew cask install Jewelrybox
curl -L https://get.rvm.io | bash -s stable --ruby --rails
source ~/.rvm/scripts/rvm
rvm --default use system

# Node tools
sudo brew install node

# MySql
sudo brew cask install SequelPro

# Install editors
sudo brew cask install sublime-text-3
ln -s /Users/whoami/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl # Link `subl` binary
echo "Setup Sublime text"
echo "Add license key"
read

sudo brew cask install Textmate # open license key file