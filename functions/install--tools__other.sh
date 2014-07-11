sudo brew cask install dropbox
echo "Open Dropbox for configuration"
read

# Install browsers
sudo brew cask install firefox
sudo brew cask install opera
sudo brew cask install google-chrome
sudo brew cask install airmail
echo "Open Chrome and set up accounts for syncing + extensions."
open /opt/homesudo brew-cask/Caskroom/google-chrome/stable-channel/Google\ Chrome.app
read

## Install productivity tools
sudo brew cask install appcleaner
sudo brew cask install clamxav
sudo brew cask install timemachineeditor
sudo brew cask install cord
sudo brew cask install handbrake
sudo brew cask install adium
sudo brew cask install bettertouchtool
gem install sass
npm install vtop
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
echo "• Textual"
echo "• WriterPro"
read
echo "Setup sublime text with themes, configs, packages..."
