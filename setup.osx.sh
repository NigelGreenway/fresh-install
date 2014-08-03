# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
spctl --master-disable

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Don’t show Dashboard as a Space
defaults write com.apple.dashboard mcx-disabled -boolean true

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
# Allow Three Finger Drag on the trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -bool false

# Use scroll gesture with the Ctrl (^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Turn off keyboard illumination when computer is not used for 10 seconds
defaults write com.apple.BezelServices kDimTime -int 10

# Don't create .DS_Store files on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Enable fnKey
defaults write -g com.apple.keyboard.fnState -boolean true

# Change dock to only show active Apps
defaults write com.apple.dock static-only -bool true

# Set default browser
open -a /opt/homebrew-cask/Caskroom/google-chrome/latest/Google\ Chrome.app

killList=( "SystemUIServer" "Dock" "Finder" )

for app in "$(killList[@])"
do
  killall "$app" > /dev/null 2>&1
done
