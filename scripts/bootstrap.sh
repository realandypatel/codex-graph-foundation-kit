#!/usr/bin/env bash
set -euo pipefail

echo "== Codex Graph Foundation Bootstrap =="
echo

have_cmd() { command -v "$1" >/dev/null 2>&1; }

echo "[1/5] Checking environment..."
if have_cmd python3; then
  echo "  - python3: $(python3 --version 2>/dev/null || true)"
else
  echo "  - python3: MISSING"
fi

if have_cmd uv; then
  echo "  - uv: $(uv --version 2>/dev/null || true)"
else
  echo "  - uv: not found"
fi

if have_cmd pipx; then
  echo "  - pipx: $(pipx --version 2>/dev/null || true)"
else
  echo "  - pipx: not found"
fi

echo
echo "[2/5] Choosing install method..."
INSTALL_METHOD=""
if have_cmd uv; then
  INSTALL_METHOD="uv"
elif have_cmd pipx; then
  INSTALL_METHOD="pipx"
elif have_cmd python3; then
  INSTALL_METHOD="pip"
else
  echo "No supported install method found. Install Python 3.10+ first."
  exit 1
fi
echo "  - selected: ${INSTALL_METHOD}"

echo
echo "[3/5] Installing code-review-graph..."
case "${INSTALL_METHOD}" in
  uv)
    uv tool install code-review-graph || true
    ;;
  pipx)
    pipx install code-review-graph || true
    ;;
  pip)
    python3 -m pip install --user code-review-graph
    ;;
esac

echo
echo "[4/5] Verifying CLI availability..."
if command -v code-review-graph >/dev/null 2>&1; then
  echo "  - code-review-graph: $(code-review-graph --help >/dev/null 2>&1 && echo 'available')"
else
  echo "  - code-review-graph command not on PATH yet."
  echo "    You may need to restart your shell or use the install method directly."
fi

echo
echo "[5/5] Next steps"
bash scripts/print-next-steps.sh
