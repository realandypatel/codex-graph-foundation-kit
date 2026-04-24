#!/usr/bin/env bash
set -euo pipefail

echo "Example watch commands:"
echo
echo "Single-repo watch:"
echo "  code-review-graph watch"
echo
echo "Daemon multi-repo mode:"
echo "  crg-daemon add /path/to/repo --alias myrepo"
echo "  crg-daemon start"
echo "  crg-daemon status"
