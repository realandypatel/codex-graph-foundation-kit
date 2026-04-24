You are auditing this repository for graph efficiency, lower token usage, and cleaner Codex behavior.

Do not implement blindly. Audit first, then report.

Goals:
- reduce noise in the graph
- reduce duplicate indexing
- reduce unnecessary file reads
- strengthen fresh-session efficiency
- improve change-aware workflow if Git context is weak

Tasks:
1. Inspect the top-level repo structure.
2. Identify duplicate, stale, archived, backup, copied, or experimental folders.
3. Identify generated/build/cache/output/vendor folders that should likely be excluded.
4. Inspect `.code-review-graphignore` and recommend exact additions/removals.
5. Check whether this repo is a Git repository and whether Git-aware workflows are available.
6. Identify adjacent worktrees, cloned copies, export folders, or nested repos that may cause duplication/confusion.
7. Identify markdown memory duplication across project memory and prompt files.
8. Rank recommendations by impact.
9. Tell me what to delete, archive, exclude, keep, and simplify.

Rules:
- do not modify files yet
- do not touch production secrets
- do not read node_modules unless required
- prefer graph-first discovery

Output:
- Current efficiency risks
- Duplicate/stale folders
- Ignore file improvements
- Git/worktree findings
- Memory/prompt cleanup findings
- Recommended actions in priority order
