# Graph Report - agent-context-and-documentation  (2026-09-17)

## Corpus Check
- cluster-only mode — file stats not available

## Summary
- 26 nodes · 22 edges · 8 communities (2 shown, 6 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `9f995c92`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- Package Metadata
- AI Agent Guidelines
- Graphify Tooling
- Scripts and Testing
- Graph Update Script
- .agents/skills/
- CodeRabbit Review Configuration

## God Nodes (most connected - your core abstractions)
1. `AGENTS.md Entry Point` - 6 edges
2. `Task-Specific Guidance Table` - 3 edges
3. `Writing Docs and Agent Context Guide` - 3 edges
4. `Deduplication Policy` - 3 edges
5. `scripts` - 2 edges
6. `author` - 1 edges
7. `keywords` - 1 edges
8. `license` - 1 edges
9. `main` - 1 edges
10. `packageManager` - 1 edges

## Surprising Connections (you probably didn't know these)
- `CLAUDE.md Shim` --references--> `AGENTS.md Entry Point`  [EXTRACTED]
  CLAUDE.md → AGENTS.md
- `Copilot Instructions Shim` --references--> `AGENTS.md Entry Point`  [EXTRACTED]
  .github/copilot-instructions.md → AGENTS.md
- `Task-Specific Guidance Table` --references--> `Deduplication Policy`  [EXTRACTED]
  AGENTS.md → docs/deduplication.md
- `Task-Specific Guidance Table` --references--> `Writing Docs and Agent Context Guide`  [EXTRACTED]
  AGENTS.md → docs/documentation.md
- `Writing Docs and Agent Context Guide` --references--> `AGENTS.md Entry Point`  [EXTRACTED]
  docs/documentation.md → AGENTS.md

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **Graphify Knowledge Management** — docs_graphify, docs_graphify_out, docs_graphify_tool [EXTRACTED 1.00]
- **Task-to-Guide Routing Pattern** — agents_md_task_guide_table, docs_deduplication_policy, docs_documentation_style_guide [EXTRACTED 1.00]

## Communities (8 total, 6 thin omitted)

### Community 0 - "Package Metadata"
Cohesion: 0.22
Nodes (8): author, description, keywords, license, main, name, packageManager, version

### Community 1 - "AI Agent Guidelines"
Cohesion: 0.43
Nodes (7): AGENTS.md Entry Point, Task-Specific Guidance Table, AGENTS.md Working Principles, CLAUDE.md Shim, Deduplication Policy, Writing Docs and Agent Context Guide, Copilot Instructions Shim

## Knowledge Gaps
- **17 isolated node(s):** `author`, `description`, `keywords`, `license`, `main` (+12 more)
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 19 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **6 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `scripts` connect `Scripts and Testing` to `Package Metadata`?**
  _High betweenness centrality (0.030) - this node is a cross-community bridge._
- **What connects `author`, `description`, `keywords` to the rest of the system?**
  _17 weakly-connected nodes found - possible documentation gaps or missing edges._