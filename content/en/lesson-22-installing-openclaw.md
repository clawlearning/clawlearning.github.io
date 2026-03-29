---
title: "Lesson 22: Installing OpenClaw Step by Step"
date: 2026-04-29
slug: "lesson-22-installing-openclaw"
draft: false
tags: ["openclaw", "installation", "tutorial"]
categories: ["OpenClaw"]
summary: "Practical installation guide for Mac, Linux, and Windows (WSL). From zero to your first 'hello' with your agent."
ShowToc: true
weight: 22
---

## Today we install

This is a hands-on lesson. Follow the steps on your computer as you read. By the end, you'll have OpenClaw installed and ready to configure.

## Step 1: Install Node.js

**macOS:** `brew install node` or download from nodejs.org.

**Linux (Ubuntu/Debian):** `curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -` then `sudo apt-get install -y nodejs`

**Windows:** First you need WSL. Open PowerShell as administrator and run `wsl --install`. Restart. Then follow the Linux instructions inside WSL.

**Verify:** `node --version` and `npm --version`

## Step 2: Install OpenClaw

`npm install -g openclaw`

Verify: `openclaw --version`

## Step 3: First test

Run `openclaw`. If it's the first time, it'll ask you to configure a provider and model. For now you can cancel (Ctrl+C) — we'll configure it in detail in lesson 23.

## File structure

```
~/.openclaw/
├── openclaw.json        # Main configuration
├── workspace/
│   └── system-prompt.md # Agent instructions
├── skills/              # Installed skills
└── memory/              # Memory database
```

## Common errors

**"npm: command not found":** Node.js isn't installed. **"Permission denied":** Try with sudo. **"openclaw: command not found":** Check your npm PATH.

## Key concepts today

- **Node.js:** The runtime environment where OpenClaw runs
- **npm:** Node.js package manager
- **`~/.openclaw/`:** Configuration directory
- **`openclaw.json`:** Central configuration file
- **WSL:** Windows Subsystem for Linux — needed for OpenClaw on Windows

---

*Next lesson: Configuring your first model and provider.*
