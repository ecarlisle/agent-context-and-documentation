# Graph Report - agent-context-and-documentation  (2026-09-17)

## Corpus Check
- Corpus is ~1,293 words - fits in a single context window. You may not need a graph.

## Summary
- 23 nodes · 30 edges · 4 communities (3 shown, 1 thin omitted)
- Extraction: 97% EXTRACTED · 0% INFERRED · 3% AMBIGUOUS
- Token cost: 58,000 input · 13,301 output

## Community Hubs (Navigation)
- Package Manifest
- Docs & Skills Guides
- AGENTS.md Entry Point & Shims
- Package Scripts

## God Nodes (most connected - your core abstractions)
1. `AGENTS.md Entry Point` - 7 edges
2. `Project README Overview` - 6 edges
3. `Deduplication Policy` - 6 edges
4. `Task-Specific Guidance Table` - 4 edges
5. `Agent Compatibility Shims Table` - 4 edges
6. `Writing Docs and Agent Context Guide` - 4 edges
7. `scripts` - 2 edges
8. `Copilot Instructions Shim` - 2 edges
9. `CLAUDE.md Shim` - 2 edges
10. `Shared Skills Directory Pattern` - 2 edges

## Surprising Connections (you probably didn't know these)
- `CodeRabbit Review Configuration` --conceptually_related_to--> `Project README Overview`  [AMBIGUOUS]
  .coderabbit.yaml → README.md
- `Copilot Instructions Shim` --references--> `AGENTS.md Entry Point`  [EXTRACTED]
  .github/copilot-instructions.md → AGENTS.md
- `CLAUDE.md Shim` --references--> `AGENTS.md Entry Point`  [EXTRACTED]
  CLAUDE.md → AGENTS.md
- `Deduplication Policy` --references--> `AGENTS.md Entry Point`  [EXTRACTED]
  docs/deduplication.md → AGENTS.md
- `Writing Docs and Agent Context Guide` --references--> `AGENTS.md Entry Point`  [EXTRACTED]
  docs/documentation.md → AGENTS.md

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **Agent Instruction File Shim Pattern** — agents_md_entry_point, claude_md_shim, github_copilot_instructions_shim [EXTRACTED 1.00]
- **Task-to-Guide Routing Pattern** — agents_md_task_guide_table, docs_graphify_skill, docs_deduplication_policy, docs_documentation_style_guide [EXTRACTED 1.00]

## Communities (4 total, 1 thin omitted)

### Community 0 - "Package Manifest"
Cohesion: 0.22
Nodes (8): author, description, keywords, license, main, name, packageManager, version

### Community 1 - "Docs & Skills Guides"
Cohesion: 0.43
Nodes (7): Task-Specific Guidance Table, CodeRabbit Review Configuration, Deduplication Policy, Writing Docs and Agent Context Guide, Graphify Skill Guide, Project README Overview, Shared Skills Directory Pattern

### Community 2 - "AGENTS.md Entry Point & Shims"
Cohesion: 0.50
Nodes (5): AGENTS.md Entry Point, AGENTS.md Working Principles, CLAUDE.md Shim, Copilot Instructions Shim, Agent Compatibility Shims Table

## Ambiguous Edges - Review These
- `CodeRabbit Review Configuration` → `Project README Overview`  [AMBIGUOUS]
  .coderabbit.yaml · relation: conceptually_related_to

## Knowledge Gaps
- **12 isolated node(s):** `name`, `version`, `description`, `main`, `test` (+7 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **1 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `CodeRabbit Review Configuration` and `Project README Overview`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **Why does `AGENTS.md Entry Point` connect `AGENTS.md Entry Point & Shims` to `Docs & Skills Guides`?**
  _High betweenness centrality (0.095) - this node is a cross-community bridge._
- **Why does `Project README Overview` connect `Docs & Skills Guides` to `AGENTS.md Entry Point & Shims`?**
  _High betweenness centrality (0.061) - this node is a cross-community bridge._
- **Why does `Task-Specific Guidance Table` connect `Docs & Skills Guides` to `AGENTS.md Entry Point & Shims`?**
  _High betweenness centrality (0.043) - this node is a cross-community bridge._
- **What connects `name`, `version`, `description` to the rest of the system?**
  _12 weakly-connected nodes found - possible documentation gaps or missing edges._