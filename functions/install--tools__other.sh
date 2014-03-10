brew cask install dropbox
echo "Open Dropbox for configuration"
read

# Install browsers
brew cask install firefox
brew cask install opera
brew cask install google-chrome
echo "Open Chrome and set up accounts for syncing + extensions."
open /opt/homebrew-cask/Caskroom/google-chrome/stable-channel/Google\ Chrome.app
read

## Install productivity tools
brew cask install AppCleaner
brew cask install Clamxav
brew cask install TimeMachineEditor
brew cask install Cord
brew cask install Handbrake
brew cask install Adium
brew cask install Bettertouchtool
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