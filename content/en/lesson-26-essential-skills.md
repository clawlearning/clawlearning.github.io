---
title: "Lesson 26: Essential Skills — Giving Your Agent Superpowers"
date: 2026-05-05
slug: "lesson-26-essential-skills"
draft: false
tags: ["openclaw", "skills", "configuration"]
categories: ["OpenClaw"]
summary: "The most useful skills to start with: web search, file reading, and real-time information sources."
ShowToc: true
weight: 26
---

## Week 6: putting the agent to work

You have an agent with a brain (model), personality (system prompt), and communication channel (Telegram). Now we give it superpowers with skills.

## Installing skills from Clawhub

`openclaw skill install skill-name`

Skills are installed in `~/.openclaw/skills/` (global) or `~/.openclaw/workspace/skills/` (per workspace).

## The 5 essential skills

**1. Web search:** Tavily (requires API key, free tier available), DuckDuckGo (free, no API key), or SearXNG (self-hosted, total privacy).

**2. URL reading (web fetch):** Opens a URL and extracts the full content.

**3. File reading:** Processes documents you send via Telegram: PDFs, text, spreadsheets.

**4. Reddit (readonly):** Search discussions, read comments. Very useful for opinions and experiences.

**5. Hacker News:** Real-time tech and startup content.

## Configuring skills

Each skill may require additional configuration. Check the documentation for each skill on Clawhub.

## Global vs workspace skills

**Global:** Available to all workspaces. **Workspace:** Only for the active workspace.

## Key concepts today

- **Clawhub.ai:** Skill directory for OpenClaw
- **Essential skills:** Web search, URL reading, file reading, Reddit, Hacker News
- **Global vs workspace skills:** Global for general use, workspace for specific projects

---

*Next lesson: Automations — letting the agent work on its own with cron jobs.*
