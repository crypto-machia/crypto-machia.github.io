#!/bin/bash
#
# quick-note.sh
# Prompts for a title, creates a new draft in _drafts/ with front matter
# already filled in, and opens it in VS Code ready to write.
#
# Meant to be triggered by a macOS keyboard shortcut (see README setup notes)
# but can also be run directly: ./_scripts/quick-note.sh

set -e

# Figure out where the repo root is regardless of where this is run from
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
DRAFTS_DIR="$REPO_ROOT/_drafts"

mkdir -p "$DRAFTS_DIR"

# Prompt for a title via a small native macOS dialog
TITLE=$(osascript -e 'display dialog "New draft title:" default answer "" with title "New Draft"' -e 'text returned of result' 2>/dev/null) || exit 0

if [ -z "$TITLE" ]; then
  echo "No title entered, exiting."
  exit 0
fi

# Slugify: lowercase, spaces and non-alphanumerics become hyphens
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g' | sed -E 's/^-+|-+$//g')

FILE="$DRAFTS_DIR/$SLUG.md"

if [ -f "$FILE" ]; then
  echo "A draft with this name already exists: $FILE"
  exit 1
fi

# Pull in whatever's on the clipboard as a starting point for the body (optional)
CLIPBOARD=$(pbpaste 2>/dev/null || echo "")

cat > "$FILE" <<EOF
---
title: "$TITLE"
tags: []
---

$CLIPBOARD
EOF

echo "Created $FILE"

# Open it in VS Code, if the 'code' CLI is installed
if command -v code &> /dev/null; then
  code "$FILE"
else
  open -e "$FILE"
fi