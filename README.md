# OpenClaw Configuration Template

This repository holds the optimized OpenClaw context + config files that you can sync to another machine (Windows, Linux, etc.).

## What is included
- `AGENTS.md`, `SOUL.md`, `MEMORY.md`, `TOOLS.md`, `IDENTITY.md`, `USER.md`, `HEARTBEAT.md`: the concise context files we use on the main machine.
- `openclaw.json`: a sanitized agent configuration with the heartbeat and control settings baked in. **Fill in your own secrets** (auth tokens, Discord token, etc.).
- `apply-template.sh`: helper script that copies the template files to `~/clawd` and `~/.openclaw`.

## Migration steps (Windows)
1. Clone this repo on the Windows machine and `cd openclaw-template`.
2. Install the same dependencies:
   ```sh
   bun install -g github:tobi/qmd
   qmd collection add %USERPROFILE%\clawd --name clawd
   qmd context add qmd://clawd "OpenClaw workspace knowledge"
   qmd update && qmd embed --collection clawd
   ```
3. Review `openclaw.json` and replace placeholder values (e.g., `<DISCORD_TOKEN>`, `<GATEWAY_TOKEN>`, `<YOUR_WHATSAPP_NUMBER>`, etc.) with your real secrets before applying.
4. Review other markdown files (`TOOLS.md`, `MEMORY.md`, etc.) and replace `<PLACEHOLDERS>` with your actual data.
4. Run `./apply-template.sh` (use Git Bash or WSL) to copy the context files and config into place.
5. Start OpenClaw and confirm:
   ```sh
   openclaw cron list
   openclaw config get | head
   ```
   Make sure `qmd-index-sync` is present and heartbeat rules match.

## Tips
- If the Windows workspace is on a different path, adjust the `workspace` field inside `openclaw.json` before copying.
- Keep this repo in sync (pull before making changes) so both machines share the same templates.
