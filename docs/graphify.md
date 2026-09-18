# Graphify

**Use when:** `/graphify`, or codebase/architecture/file-relationship questions

Graph output lives in `graphify-out/`. Verify answers against current source files when the graph may be stale.

For `/graphify` or explicit Graphify operations, use the [Graphify skill](../.agents/skills/graphify/SKILL.md). For ordinary project questions, use the query guidance below without loading the full skill.

## Queries

- For codebase questions, first run `graphify query "<question>"` when graphify-out/graph.json exists. Use `graphify path "<A>" "<B>"` for relationships and `graphify explain "<concept>"` for focused concepts. These return a scoped subgraph, usually much smaller than GRAPH_REPORT.md or raw grep output.
- If graphify-out/graph.json does not exist yet and the question needs broad codebase or architecture understanding (not a single-file lookup), suggest running `/graphify` to build one before falling back to manual exploration.
- Dirty graphify-out/ files are expected after hooks or incremental updates; dirty graph files are not a reason to skip graphify. Only skip graphify if the task is about stale or incorrect graph output, or the user explicitly says not to use it.
- If graphify-out/wiki/index.md exists, use it for broad navigation instead of raw source browsing.
- Read graphify-out/GRAPH_REPORT.md only for broad architecture review or when query/path/explain do not surface enough context.

## Maintenance

After code changes, run `graphify update .` (AST-only, no API cost).

After documentation changes, run `bash scripts/update-graph.sh` from the repository root. The [update script](../scripts/update-graph.sh) loads `.env`, performs extraction when a supported API key is set, and rebuilds clusters. See [.env.example](../.env.example) for setup.

Without a key, the script updates code only; documentation relationships remain stale. Report that limitation. To refresh them in an agent session, use `/graphify --update` and the skill's semantic extraction workflow.
