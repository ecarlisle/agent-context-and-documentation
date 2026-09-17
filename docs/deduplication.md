# Deduplication policy

Every coding agent and harness reads its instructions and skills from one shared source, never a per-tool copy:

- **Instructions**: [AGENTS.md](../AGENTS.md) is the single source of truth. A tool that expects its own instruction file (`CLAUDE.md`, `.cursor/rules/*.mdc`, `.github/copilot-instructions.md`, `.gemini/settings.json`, ...) gets a thin pointer back to `AGENTS.md`, not a duplicated copy. See [README.md](../README.md#agent-compatibility-shims) for the current shim list.
- **Skills**: all skills live once, under `.agents/skills/`. A tool that looks for skills in its own directory (`.claude/skills`, `.codex/skills`, ...) gets a symlink to `.agents/skills`, never a copied-in directory. See [README.md](../README.md#shared-skills-directory).

When adding support for a new agent or harness, add a pointer/symlink following this pattern rather than writing separate content — including when a tool (e.g. a skill's own installer) tries to auto-vendor a copy into its own directory.
