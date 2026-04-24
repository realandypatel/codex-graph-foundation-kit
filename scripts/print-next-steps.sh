#!/usr/bin/env bash
set -euo pipefail

cat <<'EOF'
Next steps:

1. In your real project repo, copy or customize:
   - AGENTS.md
   - .code-review-graphignore
   - PROJECT_CONTEXT.md
   - WORKLOG.md
   - TOMORROW.md
   - templates/*

2. Configure Codex MCP using:
   - .codex/config.toml.example

3. Then run in the real project repo:
   code-review-graph install --platform codex
   code-review-graph build

4. Then open Codex in that repo and paste:
   templates/FOUNDATION_SETUP_PROMPT.md

5. Verify with:
   bash scripts/verify-setup.sh
EOF
