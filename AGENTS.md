# AGENTS.md

This repository develops a simple, reusable structure for engineering documentation and agent context. It prioritizes shared sources of truth, concise instructions, and loading supporting documentation only when needed.

## Working principles

- Choose the simplest approach that fully satisfies the request.
- Keep changes focused; avoid speculative features and unrelated cleanup.
- Surface uncertainty when it materially affects the approach.
- Verify the outcome with checks appropriate to the change.

## Task-specific guidances

Read the relevant guide before starting a matching task. Load other documentation only as needed. Row format and growth rules: [AGENTS.md's task table](docs/task-table.md).

| Trigger | Guide |
| --- | --- |
| `/graphify`, or codebase/architecture/file-relationship questions | [Graphify](docs/graphify.md) |
| Agent/harness support, or adding a skill | [Deduplication policy](docs/deduplication.md) |
| Writing or editing any doc here | [Writing docs and agent context](docs/documentation.md) |
| Modifying AGENTS.md's task table | [Task table](docs/task-table.md) |
