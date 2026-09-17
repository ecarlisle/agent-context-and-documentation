#!/usr/bin/env bash
# Update graphify-out/ from the command line - no agent session needed.
# Uses an LLM backend key from .env if one is set (full AST + semantic
# extraction); otherwise falls back to a code-only update. See
# docs/graphify.md for the tradeoff this implies.
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

if [ -f .env ]; then
  set -a
  # shellcheck disable=SC1091
  source .env
  set +a
fi

if ! command -v graphify >/dev/null 2>&1; then
  echo "error: graphify CLI not found on PATH. Install with: pip install graphifyy (or: uv tool install graphifyy)" >&2
  exit 1
fi

if [ -n "${GEMINI_API_KEY:-}${GOOGLE_API_KEY:-}${ANTHROPIC_API_KEY:-}${OPENAI_API_KEY:-}${DEEPSEEK_API_KEY:-}${MOONSHOT_API_KEY:-}${AZURE_OPENAI_API_KEY:-}" ]; then
  graphify extract .
else
  echo "note: no LLM backend key set in .env - running a code-only update (docs/graphify.md has the tradeoff)." >&2
  graphify update .
fi

graphify cluster-only .
