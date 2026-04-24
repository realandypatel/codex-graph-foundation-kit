# INSTALL.md

## Goal
Set up a real project repo so Codex can use `code-review-graph` through MCP and work in a graph-first way.

## Prerequisites
- Python 3.10+
- One of:
  - `uv` (recommended)
  - `pipx`
  - `pip`

## Recommended install path

### Option A: uv / uvx
```bash
uv --version
uvx code-review-graph --help
```

If `uvx` is not available:
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Then:
```bash
uvx --from code-review-graph code-review-graph install --platform codex
uvx --from code-review-graph code-review-graph build
```

### Option B: pipx
```bash
pipx install code-review-graph
code-review-graph install --platform codex
code-review-graph build
```

### Option C: pip
```bash
pip install code-review-graph
code-review-graph install --platform codex
code-review-graph build
```

## Optional embeddings installs

Upstream supports optional embedding extras and OpenAI-compatible endpoints.
Check the upstream README for the latest supported extras and environment variables before choosing a provider.

Typical pattern:
```bash
pip install "code-review-graph[embeddings]"
```

Possible provider-specific extras may include variants such as:
- Google embeddings
- MiniMax embeddings
- OpenAI-compatible endpoints

Verify the exact extra names in the upstream README before publishing internal docs.

## Codex project config

Use `.codex/config.toml.example` as a starting point.

Common shape:
```toml
[mcp_servers.code_review_graph]
command = "uvx"
args = ["code-review-graph", "serve"]
startup_timeout_sec = 20
```

## Verification

Run:
```bash
bash scripts/verify-setup.sh
```

Then in Codex, ask:
```text
Build the code review graph for this project.
Use graph tools first and report graph stats.
```

## Fresh-chat workflow

After setup:
1. Use `templates/OPENING_PROMPT.md`
2. Use `templates/SESSION_BLOCK_TEMPLATE.md`
3. Use `templates/CLOSING_PROMPT.md`
