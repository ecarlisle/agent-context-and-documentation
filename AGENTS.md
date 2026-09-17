# AGENTS.md

This repository develops a simple, reusable structure for engineering documentation and agent context. It prioritizes shared sources of truth, concise instructions, and loading supporting documentation only when needed.

## Working principles

- Choose the simplest approach that fully satisfies the request.
- Keep changes focused; avoid speculative features and unrelated cleanup.
- Surface uncertainty when it materially affects the approach.
- Verify the outcome with checks appropriate to the change.

## Task-specific guidances

Read the relevant guide before starting a matching task. Load other documentation only as needed.

| Task | Guide |
| --- | --- |
| Explicitly run `/graphify`, or answer a codebase/architecture/file-relationship question (use the graph if `graphify-out/` exists, else consider suggesting one) | [Graphify](docs/graphify.md) |
| Add or change support for a coding agent/harness, or add a skill | [Deduplication policy](docs/deduplication.md) |
| Write, restructure, or review any doc in this repo (including this file) | [Writing docs and agent context](docs/documentation.md) |
