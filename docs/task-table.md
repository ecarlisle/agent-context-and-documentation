# AGENTS.md's task table

**Use when:** Modifying AGENTS.md's task table

`AGENTS.md` is always loaded — every agent, every session, every task, regardless of whether any row applies. Its table's own size is therefore the one place in this repo where progressive disclosure doesn't apply by default: the linked guides are lazy, but the rows describing them are not. This shapes how the table must be written and when it must change shape.

**Row format**: a row is a name plus a short trigger, not a sentence describing the task. Decision logic (e.g. "check whether X exists first") belongs inside the linked doc, not the row — the row's only job is deciding whether to open that doc, and the doc's job is what to do once there. Compare `docs/graphify.md`, which holds the existence-check/nudge logic that the table row does not restate.

**Table links are always plain Markdown links, never `@`-imports.** `@path` syntax (e.g. `CLAUDE.md`'s `@AGENTS.md`) is unconditionally inlined into every session's context. Using it for a task-table entry would force that doc to load every session regardless of task, defeating the two-tier index this whole doc describes.

**The doc's `**Use when:**` line is authoritative; the table row is a copy of it, not an independent description.** This is what keeps the table from silently drifting out of sync with what a doc actually covers: when a doc's trigger changes, update its own `**Use when:**` line first, then copy that same text into its `AGENTS.md` row. If the two ever disagree, the doc's line wins and the row is wrong.

**Cap**: keep the table at 8 rows or fewer. Before adding a 9th, first check whether it's really a new category or a narrower case of an existing row (e.g. don't add a separate row per export flag when one "graphify tasks" row already covers it) — consolidate rather than append.

**Splitting once the cap is hit**: this is the same two-tier shape a skill listing or a tool directory uses — a cheap always-visible index, with full detail loaded only on a match. Keep the 3-5 highest-frequency/broadest rows inline in `AGENTS.md`, move the rest into `docs/index.md` as one-line name+trigger entries (same terse shape as the inline rows), and add one closing row to `AGENTS.md`: "Anything else — check `docs/index.md`." That index can then grow far past 8 entries near-for-free, because it's the second hop: it only loads when none of the few inline rows already matched, so its size never adds to the guaranteed per-session cost the way more `AGENTS.md` rows would.

**Not adopted yet: nested `AGENTS.md` files.** The [agents.md spec](https://agents.md) supports placing another `AGENTS.md` inside a subfolder, nearest-file-wins, for genuinely separate subprojects in a monorepo. This repo has no such subproject boundary, so it isn't used — a nested file without a real boundary would fragment the single-`AGENTS.md` model above. Revisit only if this repo splits into distinct subprojects; see memory `nested-agents-md` for the per-tool caveats (Claude Code and Pi don't resolve it the same way Codex/Cursor do).
