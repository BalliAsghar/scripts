#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title vlc
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ??

# Documentation:
# @raycast.description Disable Vlc Subs
# @raycast.author BalliAsghar


tell application "System Events" to tell process "VLC"
    set frontmost to true
    tell menu bar item "Subtitles" of menu bar 1
        click
        click menu item "Subtitle Track" of menu 1
        click menu item "disable" of menu 1 of menu item "Subtitle Track" of menu 1
        log "Subtitle disabled"
    end tell
end tell
