#!/bin/bash

# install-bashedit.sh - Install bashedit configurations to .bashrc
# Created by Younes Modaresian (github.com/younesmod)

BASHRC_FILE="$HOME/.bashrc"
BACKUP_FILE="$HOME/.bashrc.backup.$(date +%Y%m%d_%H%M%S)"
BASHEDIT_FILE="bashedit"

echo "=== Installing bashedit configurations to .bashrc ==="
echo "👤 Created by: Younes Modaresian (github.com/younesmod)"
echo ""

# Check if bashedit file exists
if [ ! -f "$BASHEDIT_FILE" ]; then
    echo "❌ Error: $BASHEDIT_FILE not found!"
    echo "Please make sure bashedit file is in the current directory"
    exit 1
fi

# Check if .bashrc exists
if [ ! -f "$BASHRC_FILE" ]; then
    echo "❌ Error: $BASHRC_FILE not found!"
    exit 1
fi

# Create backup
echo "📁 Creating backup: $BACKUP_FILE"
cp "$BASHRC_FILE" "$BACKUP_FILE"

if [ $? -ne 0 ]; then
    echo "❌ Backup failed!"
    exit 1
fi

echo "✅ Backup created successfully"

# Add separator and contents from bashedit file
echo "📝 Appending configurations from $BASHEDIT_FILE..."

echo "" >> "$BASHRC_FILE"
echo "# ===== bashedit additions - $(date) =====" >> "$BASHRC_FILE"
echo "# Created by Younes Modaresian (github.com/younesmod)" >> "$BASHRC_FILE"
cat "$BASHEDIT_FILE" >> "$BASHRC_FILE"
echo "# ===== END bashedit additions =====" >> "$BASHRC_FILE"

if [ $? -eq 0 ]; then
    echo "✅ Successfully appended configurations to .bashrc"
else
    echo "❌ Failed to append configurations"
    exit 1
fi

# Display summary
echo ""
echo "=== Installation Complete ==="
echo "👤 Author: Younes Modaresian (github.com/younesmod)"
echo "📁 Backup: $BACKUP_FILE"
echo "📄 Modified: $BASHRC_FILE"
echo "🔧 Source: $BASHEDIT_FILE"
echo ""
echo "🔄 To apply changes, run: source ~/.bashrc"
echo "   or simply restart your terminal"
