#!/bin/bash
#
#

# Fixing OS X WiFi issues.
# Reference: http://apple.stackexchange.com/questions/195359/wifi-keeps-dropping-macbook-pro-13in-retina-early-2015

echo "Disable WiFi, and press Enter to continue or Ctrl+C to cancel."
read foo

prefix="${HOME}/wifi_backup/"
timestamp=`date "+%Y-%m-%d_%H%M%S"`
dirname=$prefix$timestamp

mkdir -pv $dirname
mv \
	/Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist \
	/Library/Preferences/SystemConfiguration/com.apple.network.eapolclient.configuration.plist \
        /Library/Preferences/SystemConfiguration/com.apple.wifi.message-tracer.plist \
        /Library/Preferences/SystemConfiguration/NetworkInterfaces.plist \
	/Library/Preferences/SystemConfiguration/preferences.plist \
	$dirname

echo "The system will restart now. Re-enable WiFi when it does."
shutdown -r now
