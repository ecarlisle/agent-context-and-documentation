# Writing docs and agent context

Read this before writing or editing any doc in this repo, including `AGENTS.md` and `README.md`.

## Style

- One unified style for every doc — the same text must work as terse-enough agent context and clear-enough human reading. Do not maintain a separate "agent version" and "human version" of the same content.
- Lead with the fact or instruction; put rationale after it, not before.
- Prefer short declarative sentences and tables over prose paragraphs.
- Cut anything a reader doesn't need to act or decide correctly. If a sentence doesn't change what the reader does next, remove it.
- One authoritative source per fact — link to it, never restate it (see [Deduplication policy](deduplication.md)).

## Length

- Keep a doc to what its task needs to load in one pass. If it's growing past that, split it and link from `AGENTS.md`'s task table instead of letting it grow.
- `AGENTS.md` itself stays a routing table plus a short principles list — never accumulate topic-specific detail there; give it its own doc under `docs/` instead.

## AGENTS.md's task table: a two-tier index, not a growing list

`AGENTS.md` is always loaded — every agent, every session, every task, regardless of whether any row applies. Its table's own size is therefore the one place in this repo where progressive disclosure doesn't apply by default: the linked guides are lazy, but the rows describing them are not. This shapes how the table must be written and when it must change shape.

**Row format**: a row is a name plus a short trigger, not a sentence describing the task. Decision logic (e.g. "check whether X exists first") belongs inside the linked doc, not the row — the row's only job is deciding whether to open that doc, and the doc's job is what to do once there. Compare `docs/graphify.md`, which holds the existence-check/nudge logic that the table row does not restate.

**Cap**: keep the table at 8 rows or fewer. Before adding a 9th, first check whether it's really a new category or a narrower case of an existing row (e.g. don't add a separate row per export flag when one "graphify tasks" row already covers it) — consolidate rather than append.

**Splitting once the cap is hit**: this is the same two-tier shape a skill listing or a tool directory uses — a cheap always-visible index, with full detail loaded only on a match. Keep the 3-5 highest-frequency/broadest rows inline in `AGENTS.md`, move the rest into `docs/index.md` as one-line name+trigger entries (same terse shape as the inline rows), and add one closing row to `AGENTS.md`: "Anything else — check `docs/index.md`." That index can then grow far past 8 entries near-for-free, because it's the second hop: it only loads when none of the few inline rows already matched, so its size never adds to the guaranteed per-session cost the way more `AGENTS.md` rows would.

## When you change a convention or decision

Update every doc that states it as a fact. A stale doc costs more (wrong answers, wasted tokens re-deriving the truth) than the cost of updating it now.
