# AGENTS.md - Workspace Rules

## Rules
- **Memory**: Daily logs in `memory/YYYY-MM-DD.md`. Long-term in `MEMORY.md`. Write it down — no mental notes!
- **Safety**: No private exfiltration. `trash` > `rm`. Ask before external actions.
- **Heartbeats**: Check `HEARTBEAT.md`. Quiet 23:00-08:00 unless urgent.
- **Formatting**: WhatsApp: **bold** only, no tables/headers. Discord: `<links>` to hide embeds.

## Token Saving & Retrieval
- **Priority**: Always use `qmd query` (or shorthand `mq`) to find info before `read` or `ls` on large dirs.
- **Precision**: Only `read` specific lines/ranges. Avoid full file reads.
- **Memory**: Prefer `qmd` over manual file scans for searching memory.
