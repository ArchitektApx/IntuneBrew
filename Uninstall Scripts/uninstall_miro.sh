#!/bin/bash
# Uninstall script for Miro
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Miro..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Miro if running..."
pkill -f "Miro" 2>/dev/null || true

# Remove /Applications/Miro.app
echo "Removing /Applications/Miro.app..."
if [ -d "/Applications/Miro.app" ]; then
    rm -rf "/Applications/Miro.app" 2>/dev/null || true
elif [ -f "/Applications/Miro.app" ]; then
    rm -f "/Applications/Miro.app" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.realtimeboard.sfl*
echo "Removing $HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.realtimeboard.sfl*..."
if [ -d "$HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.realtimeboard.sfl*" ]; then
    rm -rf "$HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.realtimeboard.sfl*" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.realtimeboard.sfl*" ]; then
    rm -f "$HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.realtimeboard.sfl*" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/RealtimeBoard
echo "Removing $HOME/Library/Application Support/RealtimeBoard..."
if [ -d "$HOME/Library/Application Support/RealtimeBoard" ]; then
    rm -rf "$HOME/Library/Application Support/RealtimeBoard" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/RealtimeBoard" ]; then
    rm -f "$HOME/Library/Application Support/RealtimeBoard" 2>/dev/null || true
fi

# Remove $HOME/Library/Logs/RealtimeBoard
echo "Removing $HOME/Library/Logs/RealtimeBoard..."
if [ -d "$HOME/Library/Logs/RealtimeBoard" ]; then
    rm -rf "$HOME/Library/Logs/RealtimeBoard" 2>/dev/null || true
elif [ -f "$HOME/Library/Logs/RealtimeBoard" ]; then
    rm -f "$HOME/Library/Logs/RealtimeBoard" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/com.electron.realtimeboard.plist
echo "Removing $HOME/Library/Preferences/com.electron.realtimeboard.plist..."
if [ -d "$HOME/Library/Preferences/com.electron.realtimeboard.plist" ]; then
    rm -rf "$HOME/Library/Preferences/com.electron.realtimeboard.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/com.electron.realtimeboard.plist" ]; then
    rm -f "$HOME/Library/Preferences/com.electron.realtimeboard.plist" 2>/dev/null || true
fi

# Remove $HOME/Library/Saved Application State/com.electron.realtimeboard.savedState
echo "Removing $HOME/Library/Saved Application State/com.electron.realtimeboard.savedState..."
if [ -d "$HOME/Library/Saved Application State/com.electron.realtimeboard.savedState" ]; then
    rm -rf "$HOME/Library/Saved Application State/com.electron.realtimeboard.savedState" 2>/dev/null || true
elif [ -f "$HOME/Library/Saved Application State/com.electron.realtimeboard.savedState" ]; then
    rm -f "$HOME/Library/Saved Application State/com.electron.realtimeboard.savedState" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
