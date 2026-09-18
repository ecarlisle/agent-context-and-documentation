# Agent Context and Documentation

A reusable structure for engineering documentation and agent context — usable both as a template to copy into other projects and as the living docs/context store for this project itself, as it grows.

It provides:

- A single, concise entry point for coding agents ([AGENTS.md](AGENTS.md)), which routes to task-specific guides only when needed.
- A `docs/` directory for the supporting guides those tasks reference.
- Compatibility shims for agent tools that look for their own instruction file, pointing each one back to `AGENTS.md` instead of duplicating its content.

## Why

Keeping documentation scattered or duplicated across multiple agent-specific files causes drift — the same fact gets stated (and edited) in more than one place, and stale copies pile up. This template keeps one authoritative source per fact, loaded only when it's relevant to the task at hand.

Concretely: every agent's instructions route through `AGENTS.md`, and every agent's skills live in one shared `.agents/skills/` directory — see [docs/deduplication.md](docs/deduplication.md) for the rule, and the sections below for how each tool is wired to it.

## Layout

| Path | Purpose |
| --- | --- |
| [AGENTS.md](AGENTS.md) | Entry point for agents. Working principles plus a table routing tasks to guides. |
| `docs/` | Task-specific guides referenced from `AGENTS.md` — including [how to write docs in this repo](docs/documentation.md). |
| [.env.example](.env.example) | Template for local secrets (e.g. `GEMINI_API_KEY`). Copy to `.env`, which is gitignored. |

### Agent compatibility shims

Each supported tool's own instruction-file convention is kept as a thin pointer back to `AGENTS.md`, so there's still one authoritative source.

| Agent | Convention | Shim in this repo |
| --- | --- | --- |
| Claude Code | `CLAUDE.md` | [CLAUDE.md](CLAUDE.md) imports `AGENTS.md` |
| Codex | Reads `AGENTS.md` natively | none needed |
| Gemini CLI | `context.fileName` in `.gemini/settings.json` | [.gemini/settings.json](.gemini/settings.json) points to `AGENTS.md` |
| GitHub Copilot | Reads `AGENTS.md` natively *for its agent surfaces* (VS Code Copilot Chat/agent mode, Copilot CLI, Copilot cloud agent, Copilot code review); its plain-chat surfaces (Copilot Chat on GitHub.com, Visual Studio, JetBrains, Eclipse, Xcode) only see `.github/copilot-instructions.md` | [.github/copilot-instructions.md](.github/copilot-instructions.md) points to `AGENTS.md`, for the surfaces that don't read it natively |
| Cursor | Reads `AGENTS.md` natively | none needed |

Additional harnesses that already read `AGENTS.md` (or `CLAUDE.md`) natively, with no shim required: **OpenCode** and **Pi**.

### Shared skills directory

Skills (e.g. reusable `/command`-style capabilities) live once, under [.agents/skills/](.agents/skills/). Tool-specific skill directories are symlinks to that shared folder rather than copies, so a skill is written once and every tool sees it:

```
.claude/skills -> ../.agents/skills
.codex/skills  -> ../.agents/skills
```

When adding support for a new tool that looks for skills in its own directory, symlink that directory to `.agents/skills` instead of copying files into it — copies drift out of sync with the shared source.

## Using this structure

As a template: copy it into a project, then:

1. Edit `AGENTS.md` with the project's own working principles.
2. Add a guide under `docs/` for each recurring task category, and add a row to the `AGENTS.md` table pointing to it.
3. Keep each fact or convention in exactly one document; link to it from elsewhere instead of repeating it.

In place: this repo also grows its own real content the same way — add guides under `docs/` as tasks recur, following [docs/documentation.md](docs/documentation.md)'s style and length rules.
