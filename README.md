# Codex Graph Foundation Kit

A production-ready starter repository for setting up **graph-first, token-efficient coding workflows** in real projects with **Codex**, **MCP**, and durable repo memory.

This kit is designed to help teams and solo developers:

- install and wire up `code-review-graph`
- configure Codex to use graph tools before broad file reads
- keep repo-level memory files for fresh-chat continuity
- standardize session startup / task execution / session closure
- reduce context waste on large or multi-file tasks

> This repository is a **GitHub-ready foundation kit**, not the graph engine itself.  
> It is built to help you set up and operate a graph-based workflow in your own repositories.

---
## Who this is for

This kit is for solo builders, startups, consultants, and teams who want to use Codex in a more structured, graph-first way without wasting tokens on broad file reads.

It is especially useful for:
- multi-file projects
- ongoing product development
- refactors and reviews
- teams that want fresh-chat continuity
- repos that need durable operating rules and memory files

## What this is / What this is not

**This is:**
- a GitHub-ready foundation kit
- a starter structure for graph-first Codex workflows
- a repo template with prompts, memory files, scripts, and setup guidance

**This is not:**
- the graph engine itself
- a replacement for the upstream `code-review-graph` project
- a guarantee of the same token reduction on every repo or task

## What this kit gives you

- **One-time setup prompt** for Codex
- **Opening / task / closing prompts**
- **Repo memory system**
  - `PROJECT_CONTEXT.md`
  - `WORKLOG.md`
  - `TOMORROW.md`
- **Strong defaults**
  - `AGENTS.md`
  - `.code-review-graphignore`
  - `.codex/config.toml.example`
- **Scripts**
  - bootstrap install
  - setup verification
  - optional watch / status helpers
- **Docs**
  - installation
  - compatibility
  - social media wording
  - safe claims

---

## What this kit is built around

This kit is intended to work with the upstream `code-review-graph` project, which:

- builds a structural code graph with Tree-sitter
- exposes graph tools via MCP
- supports incremental updates
- supports Codex and multiple coding tools
- reports benchmarked token reductions on larger, multi-file tasks

Upstream project:
- https://github.com/tirth8205/code-review-graph

---

## Quick start

### 1) Clone or copy this kit
```bash
git clone https://github.com/realandypatel/codex-graph-foundation-kit.git
cd codex-graph-foundation-kit
```

### 2) Review the docs
Open these first:
- `docs/INSTALL.md`
- `docs/COMPATIBILITY.md`
- `docs/SAFE_CLAIMS.md`

### 3) Copy this kit into a real project repo
This kit is meant to be used as a starter in a real codebase.

Recommended approach:
- copy the files you want into your actual project repo, or
- use this repo as a template and customize it for your organization

### 4) Run the bootstrap
```bash
bash scripts/bootstrap.sh
```

This script:
- checks Python / uv / pipx availability
- installs `code-review-graph`
- prints the next Codex/MCP steps
- points you to config examples and prompts

### 5) Configure Codex / MCP
Use:
- `.codex/config.toml.example`
- `docs/INSTALL.md`

### 6) In your real repo, use the one-time foundation prompt
Open:
- `templates/FOUNDATION_SETUP_PROMPT.md`

Paste that into Codex **inside the target project repo**.

---

## Recommended operating model

### First time in a project
1. Run the **Foundation Setup Prompt**
2. Let Codex inspect, install, configure, and verify

### Each new session
1. Use the **Opening Prompt**
2. Use the **Session Block Prompt**
3. Use the **Closing Prompt**

### Why this works
- **Graph = code memory**
- **Markdown files = project memory**
- **Fresh chats = lower token drag**
- **Opening / closing workflow = durable continuity**

---

## Repo layout

```text
.
├── AGENTS.md
├── LICENSE
├── PROJECT_CONTEXT.md
├── README.md
├── TOMORROW.md
├── WORKLOG.md
├── docs
│   ├── COMPATIBILITY.md
│   ├── INSTALL.md
│   ├── SAFE_CLAIMS.md
│   ├── SOCIAL_COPY.md
│   └── WHY_THIS_EXISTS.md
├── scripts
│   ├── bootstrap.sh
│   ├── print-next-steps.sh
│   ├── verify-setup.sh
│   └── watch-example.sh
├── templates
│   ├── CLOSING_PROMPT.md
│   ├── FOUNDATION_SETUP_PROMPT.md
│   ├── OPENING_PROMPT.md
│   └── SESSION_BLOCK_TEMPLATE.md
└── .codex
    └── config.toml.example
```

---

## Public positioning

Use wording like:

> A GitHub-ready starter kit for graph-first Codex workflows.  
> Helps teams set up MCP, repo memory, prompts, and graph-first operating rules so coding agents read less, stay more targeted, and work better across fresh-chat sessions.

Avoid wording like:
- “guaranteed 90% token reduction”
- “this is the graph engine”
- “works identically on every task”

See:
- `docs/SAFE_CLAIMS.md`
- `docs/SOCIAL_COPY.md`

---

## Best fit

This workflow shines most on:
- multi-file changes
- refactors
- reviews
- dependency tracing
- architecture navigation
- monorepos
- ongoing projects where fresh-chat continuity matters

It is less useful on:
- tiny one-file edits
- trivial search-and-replace tasks
- very small repos where raw file reads are already cheap

---
## Fastest way to use this

1. Clone this repo or use it as a template.
2. Copy the structure into your real project repo.
3. Review `docs/INSTALL.md`
4. Run:

```bash
bash scripts/bootstrap.sh
