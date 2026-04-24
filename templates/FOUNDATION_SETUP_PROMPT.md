# Foundation Setup Prompt

```text
You are inside this repository.

This is a one-time foundation setup task for this project.

Objective:
Set up this repo so Codex works in a graph-first, token-efficient way with durable project memory for future sessions.

Do all of the following:

1. Inspect the repo and identify:
- primary languages
- frameworks
- package managers
- repo/app/package structure
- generated folders
- build folders
- cache folders
- dependency/vendor folders
- test folders

2. Install and configure code-review-graph for this repo and for Codex.

3. Create or update project-scoped Codex config if needed so Codex can use graph tools in this repo.

4. Build the graph and verify:
- graph stats
- indexed file count
- available graph tools
- whether incremental updating is available

5. Create a strong `.code-review-graphignore` to exclude high-noise folders and files, including:
- node_modules
- dist
- build
- coverage
- caches
- generated files
- vendor folders
- framework artifacts

6. Create or update these repo memory files:
- `AGENTS.md`
- `PROJECT_CONTEXT.md`
- `WORKLOG.md`
- `TOMORROW.md`
- `OPENING_PROMPT.md`
- `CLOSING_PROMPT.md`
- `SESSION_BLOCK_TEMPLATE.md` if useful

7. In `AGENTS.md`, enforce these working rules:
- use graph tools first
- do not scan the whole repo by default
- never read node_modules unless explicitly asked
- start with minimal context
- use impact radius and changed files first
- expand source reading gradually
- prefer related tests and direct dependencies
- do not reread files unnecessarily
- summarize shell output briefly
- ask before risky or speculative changes

8. In the memory files, create a clean workflow for:
- starting a new session
- tracking progress
- selecting the next task
- closing a session cleanly

9. At the end, report:
- what you installed
- what files you created or changed
- whether graph setup succeeded
- whether future sessions are ready to use this system

Rules:
- this is setup only, not feature work
- do not make product changes unless needed for setup
- ask before machine-level or risky changes if approval is required
- prefer the cleanest, lowest-maintenance solution
- optimize for lower token use, faster responses, and better accuracy
```
