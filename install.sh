#!/bin/bash
HOOK_PATH=".git/hooks/commit-msg"

if [ ! -d ".git" ]; then
    echo "❌ Error: This is not a Git repository."
    exit 1
fi

if [ -f "$HOOK_PATH" ]; then
    echo "⚠️  Warning: A commit-msg hook already exists. Creating a backup at $HOOK_PATH.bak."
    mv "$HOOK_PATH" "$HOOK_PATH.bak"
else
    echo "✅ Commit-msg hook does not exist. Creating a new one."
fi

cp "$(dirname "$0")/commit-msg.sh" "$HOOK_PATH"
chmod +x "$HOOK_PATH"

echo "✅ Commit-msg hook installed successfully!"
