# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v -p "Sudo password for updating macos settings: "

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Activity Monitor" \
	"Dock"; do
	killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes may require a logout/restart to take effect."
