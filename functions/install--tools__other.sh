sudo brew cask install dropbox
echo "Open Dropbox for configuration"
read

# Install browsers
sudo brew cask install firefox
sudo brew cask install opera
sudo brew cask install google-chrome
echo "Open Chrome and set up accounts for syncing + extensions."
open /opt/homesudo brew-cask/Caskroom/google-chrome/stable-channel/Google\ Chrome.app
read

## Install productivity tools
sudo brew cask install AppCleaner
sudo brew cask install Clamxav
sudo brew cask install TimeMachineEditor
sudo brew cask install Cord
sudo brew cask install Handbrake
sudo brew cask install Adium
sudo brew cask install Bettertouchtool
echo "Configure Clamxav"
read

echo "Install iWorks & iLife"
read
echo "Install BT Cloud"
read
echo "Install VTech for Esmae's bear :)"
read
echo "From the App Store install:"
echo "• twitter"
echo "• Pocket"
echo "• Sourcetree"
echo "• Evernote"
echo "• xCode"
echo "• AirMail"
read
echo "Setup sublime text with themes, configs, packages..."