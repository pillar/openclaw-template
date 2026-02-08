#!/usr/bin/env bash
set -euo pipefail
TEMPLATE_DIR="$(cd "$(dirname "$0")" && pwd)"
DEST_WORK="${HOME}/clawd"
DEST_OPENCLAW="${HOME}/.openclaw"
mkdir -p "$DEST_WORK" "$DEST_OPENCLAW"
for file in AGENTS.md SOUL.md MEMORY.md TOOLS.md IDENTITY.md USER.md HEARTBEAT.md; do
  cp "$TEMPLATE_DIR/$file" "$DEST_WORK/$file"
done
cp "$TEMPLATE_DIR/openclaw.json" "$DEST_OPENCLAW/openclaw.json"
echo "Template files copied. Review ~/.openclaw/openclaw.json and fill in any secrets before restarting OpenClaw."
