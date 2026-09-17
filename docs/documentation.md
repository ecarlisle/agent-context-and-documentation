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

## When you change a convention or decision

Update every doc that states it as a fact. A stale doc costs more (wrong answers, wasted tokens re-deriving the truth) than the cost of updating it now.
