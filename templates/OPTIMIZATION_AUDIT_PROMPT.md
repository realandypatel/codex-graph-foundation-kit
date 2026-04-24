You are auditing this repository for graph efficiency, lower token usage, and cleaner Codex behavior.

Do not implement blindly. Audit first, then report.

Goals:
- reduce noise in the graph
- reduce duplicate indexing
- reduce unnecessary file reads
- strengthen fresh-session efficiency
- improve change-aware workflow if Git context is weak

Audit tasks:
1. Inspect the top-level repo structure.
2. Identify duplicate, stale, archived, backup, copied, or experimental folders that may be creating graph noise.
3. Identify generated/build/cache/output/vendor folders that should likely be excluded.
4. Inspect `.code-review-graphignore` and recommend exact additions/removals.
5. Check whether this repo is a Git repository and whether Git-aware workflows are available.
6. Identify whether adjacent worktrees, cloned copies, export folders, or nested repos are likely causing duplication/confusion.
7. Identify markdown memory duplication across:
   - `PROJECT_CONTEXT.md`
   - `WORKLOG.md`
   - `TOMORROW.md`
   - prompt files
8. Identify oversized or unnecessary prompt content that may waste tokens.
9. Tell me what to:
   - delete
   - archive
   - exclude
   - keep
   - simplify
10. Rank recommendations by impact:
   - high impact
   - medium impact
   - low impact

Rules:
- Do not delete or modify anything yet.
- Do not touch production secrets or configs.
- Do not read `node_modules` unless required.
- For large files, inspect only the needed ranges.
- Prefer graph-first discovery before broad file reading.

Output format:
- Current efficiency risks
- Duplicate/stale folders
- Ignore file improvements
- Git/worktree findings
- Memory/prompt cleanup findings
- Recommended actions in priority order
- Exact files/folders to update next
