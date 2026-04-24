#!/usr/bin/env bash
set -euo pipefail

echo "== Verify Graph Setup =="
echo

have_cmd() { command -v "$1" >/dev/null 2>&1; }

if ! have_cmd code-review-graph; then
  echo "FAIL: code-review-graph command not found"
  exit 1
fi

echo "[1/4] CLI found"
code-review-graph --help >/dev/null
echo "  - code-review-graph is available"

echo "[2/4] Checking local graph state"
if [ -d ".code-review-graph" ]; then
  echo "  - .code-review-graph directory exists"
else
  echo "  - .code-review-graph directory not found yet"
fi

echo "[3/4] Attempting graph status"
if code-review-graph status >/dev/null 2>&1; then
  echo "  - graph status command succeeded"
else
  echo "  - graph status did not succeed yet (build may not be complete)"
fi

echo "[4/4] Checking for Codex config example"
if [ -f ".codex/config.toml.example" ]; then
  echo "  - found .codex/config.toml.example"
else
  echo "  - missing .codex/config.toml.example"
fi

echo
echo "Verification complete."
