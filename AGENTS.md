# AGENTS.md

## Default operating rules

1. Use graph tools first.
2. Do not scan the whole repository by default.
3. Never read `node_modules` unless explicitly asked.
4. Start with minimal context.
5. Use changed files, impact radius, dependencies, callers, and related tests before broad source reads.
6. Read only the minimum number of files needed.
7. For large files, read only the relevant ranges or sections.
8. Reuse already-read context instead of rereading files.
9. Summarize shell output briefly instead of dumping raw logs.
10. Ask before speculative, risky, or production-affecting changes.

## Session startup

At the start of each session:
1. Read `PROJECT_CONTEXT.md`
2. Read `TOMORROW.md`
3. Read `WORKLOG.md`
4. Confirm the graph is current
5. Confirm graph tools are available

## Session close

At the end of each session:
1. Update `WORKLOG.md`
2. Update `TOMORROW.md`
3. Run `git status --short`
4. Separate signal from noise
5. Give a concise completion + next-step summary

## Task execution

Before working a task:
1. Use graph tools to locate:
   - exact files
   - exact symbols
   - callers
   - dependents
   - related tests
   - impact radius
2. Then open only what is needed.
