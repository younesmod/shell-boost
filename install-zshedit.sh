#!/bin/zsh

# install-zshedit.sh - Install zshedit configurations to .zshrc
# Created by Younes Modaresian (github.com/younesmod)

ZSHRC_FILE="$HOME/.zshrc"
BACKUP_FILE="$HOME/.zshrc.backup.$(date +%Y%m%d_%H%M%S)"
ZSHEDIT_FILE="zshedit"

echo "=== Installing zshedit configurations to .zshrc ==="
echo "👤 Created by: Younes Modaresian (github.com/younesmod)"
echo ""

# Check if zshedit file exists
if [ ! -f "$ZSHEDIT_FILE" ]; then
    echo "❌ Error: $ZSHEDIT_FILE not found!"
    echo "Please make sure zshedit file is in the current directory"
    exit 1
fi

# Check if .zshrc exists
if [ ! -f "$ZSHRC_FILE" ]; then
    echo "❌ Error: $ZSHRC_FILE not found!"
    exit 1
fi

# Create backup
echo "📁 Creating backup: $BACKUP_FILE"
cp "$ZSHRC_FILE" "$BACKUP_FILE"

if [ $? -ne 0 ]; then
    echo "❌ Backup failed!"
    exit 1
fi

echo "✅ Backup created successfully"

# Add separator and contents from zshedit file
echo "📝 Appending configurations from $ZSHEDIT_FILE..."

echo "" >> "$ZSHRC_FILE"
echo "# ===== zshedit additions - $(date) =====" >> "$ZSHRC_FILE"
echo "# Created by Younes Modaresian (github.com/younesmod)" >> "$ZSHRC_FILE"
cat "$ZSHEDIT_FILE" >> "$ZSHRC_FILE"
echo "# ===== END zshedit additions =====" >> "$ZSHRC_FILE"

if [ $? -eq 0 ]; then
    echo "✅ Successfully appended configurations to .zshrc"
else
    echo "❌ Failed to append configurations"
    exit 1
fi

# Display summary
echo ""
echo "=== Installation Complete ==="
echo "👤 Author: Younes Modaresian (github.com/younesmod)"
echo "📁 Backup: $BACKUP_FILE"
echo "📄 Modified: $ZSHRC_FILE"
echo "🔧 Source: $ZSHEDIT_FILE"
echo ""
echo "🔄 To apply changes, run: source ~/.zshrc"
echo "   or simply restart your terminal"
