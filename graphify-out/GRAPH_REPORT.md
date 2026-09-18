# Graph Report - /Users/eric/repos/agent-context-and-documentation  (2026-09-18)

## Corpus Check
- Corpus is ~1,796 words - fits in a single context window. You may not need a graph.

## Summary
- 29 nodes · 26 edges · 7 communities (3 shown, 4 thin omitted)
- Extraction: 96% EXTRACTED · 4% INFERRED · 0% AMBIGUOUS · INFERRED: 1 edges (avg confidence: 0.85)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Package Metadata|Package Metadata]]
- [[_COMMUNITY_Shared Agent Context|Shared Agent Context]]
- [[_COMMUNITY_Task Documentation Guides|Task Documentation Guides]]
- [[_COMMUNITY_Scripts and Testing|Scripts and Testing]]
- [[_COMMUNITY_Graph Maintenance|Graph Maintenance]]
- [[_COMMUNITY_Working Principles|Working Principles]]
- [[_COMMUNITY_Code Review Configuration|Code Review Configuration]]

## God Nodes (most connected - your core abstractions)
1. `Shared Agent Sources` - 6 edges
2. `Agent Context Structure` - 5 edges
3. `Task-Specific Guidance` - 5 edges
4. `scripts` - 2 edges
5. `Agent Compatibility Shims` - 2 edges
6. `Documentation Style` - 2 edges
7. `Graphify Queries` - 2 edges
8. `main` - 1 edges
9. `test` - 1 edges
10. `keywords` - 1 edges

## Surprising Connections (you probably didn't know these)
- `Agent Instructions` --references--> `Agent Context Structure`  [EXTRACTED]
  .github/copilot-instructions.md → AGENTS.md
- `AGENTS Import` --references--> `Agent Context Structure`  [EXTRACTED]
  CLAUDE.md → AGENTS.md
- `Agent Compatibility Shims` --references--> `Agent Context Structure`  [EXTRACTED]
  README.md → AGENTS.md
- `Reusable Documentation Template` --references--> `Agent Context Structure`  [EXTRACTED]
  README.md → AGENTS.md
- `Task-Specific Guidance` --references--> `Shared Agent Sources`  [EXTRACTED]
  AGENTS.md → docs/deduplication.md

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **Shared Agent Context Pattern** — agents_agent_context_structure, readme_agent_compatibility_shims, readme_shared_skills_directory, docs_deduplication_shared_agent_sources [EXTRACTED 1.00]
- **Progressive Disclosure Documentation** — agents_task_specific_guidance, docs_documentation_documentation_length, docs_task_table_task_table_constraints [EXTRACTED 1.00]

## Communities (7 total, 4 thin omitted)

### Community 0 - "Package Metadata"
Cohesion: 0.22
Nodes (8): author, description, keywords, license, main, name, packageManager, version

### Community 1 - "Shared Agent Context"
Cohesion: 0.29
Nodes (8): Agent Context Structure, AGENTS Import, Shared Agent Sources, Agent Instructions, Agent Compatibility Shims, Reusable Documentation Template, Shared Skills Directory, Single Authoritative Source

### Community 2 - "Task Documentation Guides"
Cohesion: 0.33
Nodes (6): Task-Specific Guidance, Documentation Length Limits, Documentation Style, Graphify Maintenance, Graphify Queries, Task Table Constraints

## Knowledge Gaps
- **15 isolated node(s):** `name`, `version`, `description`, `main`, `test` (+10 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **4 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `Shared Agent Sources` connect `Shared Agent Context` to `Task Documentation Guides`?**
  _High betweenness centrality (0.140) - this node is a cross-community bridge._
- **Why does `Task-Specific Guidance` connect `Task Documentation Guides` to `Shared Agent Context`?**
  _High betweenness centrality (0.108) - this node is a cross-community bridge._
- **What connects `name`, `version`, `description` to the rest of the system?**
  _20 weakly-connected nodes found - possible documentation gaps or missing edges._