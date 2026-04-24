# COMPATIBILITY.md

## What this kit is compatible with

This kit is designed around:
- Codex workflows
- MCP-based tool integration
- graph-first repo operation with `code-review-graph`

## Model compatibility guidance

Safe wording:
- designed for Codex workflows
- works well with GPT-5.4-era Codex / MCP workflows
- suitable for GPT-5.x tool-capable coding environments where MCP is supported

Conservative public wording:
- compatible with Codex and GPT-5.4-class MCP workflows

## Why the wording is conservative

Official docs clearly confirm:
- Codex supports MCP workflows
- GPT-5.4 supports MCP
- GPT-5.4 is available in Codex

Do not publicly hard-claim support for versions that are not clearly documented at the time you publish.

## Upstream graph-tool compatibility

The upstream `code-review-graph` README says it supports:
- Codex
- Claude Code
- Cursor
- Windsurf
- Zed
- Continue
- OpenCode
- Antigravity
- Kiro
- and more

This starter kit focuses primarily on **Codex-first** usage.
