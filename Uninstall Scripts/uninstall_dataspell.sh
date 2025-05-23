#!/bin/bash
# Uninstall script for DataSpell
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling DataSpell..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping DataSpell if running..."
pkill -f "DataSpell" 2>/dev/null || true

# Remove /Applications/DataSpell.app
echo "Removing /Applications/DataSpell.app..."
if [ -d "/Applications/DataSpell.app" ]; then
    rm -rf "/Applications/DataSpell.app" 2>/dev/null || true
elif [ -f "/Applications/DataSpell.app" ]; then
    rm -f "/Applications/DataSpell.app" 2>/dev/null || true
fi

# Remove binary /Applications/DataSpell.app/DataSpell.app/Contents/MacOS/dataspell
echo "Removing binary /Applications/DataSpell.app/DataSpell.app/Contents/MacOS/dataspell..."
if [ -f "/Applications/DataSpell.app/DataSpell.app/Contents/MacOS/dataspell" ]; then
    rm -f "/Applications/DataSpell.app/DataSpell.app/Contents/MacOS/dataspell" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/DataSpell*
echo "Removing $HOME/Library/Application Support/DataSpell*..."
if [ -d "$HOME/Library/Application Support/DataSpell*" ]; then
    rm -rf "$HOME/Library/Application Support/DataSpell*" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/DataSpell*" ]; then
    rm -f "$HOME/Library/Application Support/DataSpell*" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/JetBrains/DataSpell*
echo "Removing $HOME/Library/Application Support/JetBrains/DataSpell*..."
if [ -d "$HOME/Library/Application Support/JetBrains/DataSpell*" ]; then
    rm -rf "$HOME/Library/Application Support/JetBrains/DataSpell*" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/JetBrains/DataSpell*" ]; then
    rm -f "$HOME/Library/Application Support/JetBrains/DataSpell*" 2>/dev/null || true
fi

# Remove $HOME/Library/Caches/JetBrains/DataSpell*
echo "Removing $HOME/Library/Caches/JetBrains/DataSpell*..."
if [ -d "$HOME/Library/Caches/JetBrains/DataSpell*" ]; then
    rm -rf "$HOME/Library/Caches/JetBrains/DataSpell*" 2>/dev/null || true
elif [ -f "$HOME/Library/Caches/JetBrains/DataSpell*" ]; then
    rm -f "$HOME/Library/Caches/JetBrains/DataSpell*" 2>/dev/null || true
fi

# Remove $HOME/Library/Logs/JetBrains/DataSpell*
echo "Removing $HOME/Library/Logs/JetBrains/DataSpell*..."
if [ -d "$HOME/Library/Logs/JetBrains/DataSpell*" ]; then
    rm -rf "$HOME/Library/Logs/JetBrains/DataSpell*" 2>/dev/null || true
elif [ -f "$HOME/Library/Logs/JetBrains/DataSpell*" ]; then
    rm -f "$HOME/Library/Logs/JetBrains/DataSpell*" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/com.jetbrains.dataspell.plist
echo "Removing $HOME/Library/Preferences/com.jetbrains.dataspell.plist..."
if [ -d "$HOME/Library/Preferences/com.jetbrains.dataspell.plist" ]; then
    rm -rf "$HOME/Library/Preferences/com.jetbrains.dataspell.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/com.jetbrains.dataspell.plist" ]; then
    rm -f "$HOME/Library/Preferences/com.jetbrains.dataspell.plist" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/DataSpell*
echo "Removing $HOME/Library/Preferences/DataSpell*..."
if [ -d "$HOME/Library/Preferences/DataSpell*" ]; then
    rm -rf "$HOME/Library/Preferences/DataSpell*" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/DataSpell*" ]; then
    rm -f "$HOME/Library/Preferences/DataSpell*" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/jetbrains.dataspell.*.plist
echo "Removing $HOME/Library/Preferences/jetbrains.dataspell.*.plist..."
if [ -d "$HOME/Library/Preferences/jetbrains.dataspell.*.plist" ]; then
    rm -rf "$HOME/Library/Preferences/jetbrains.dataspell.*.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/jetbrains.dataspell.*.plist" ]; then
    rm -f "$HOME/Library/Preferences/jetbrains.dataspell.*.plist" 2>/dev/null || true
fi

# Remove $HOME/Library/Saved Application State/com.jetbrains.dataspell.savedState
echo "Removing $HOME/Library/Saved Application State/com.jetbrains.dataspell.savedState..."
if [ -d "$HOME/Library/Saved Application State/com.jetbrains.dataspell.savedState" ]; then
    rm -rf "$HOME/Library/Saved Application State/com.jetbrains.dataspell.savedState" 2>/dev/null || true
elif [ -f "$HOME/Library/Saved Application State/com.jetbrains.dataspell.savedState" ]; then
    rm -f "$HOME/Library/Saved Application State/com.jetbrains.dataspell.savedState" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
