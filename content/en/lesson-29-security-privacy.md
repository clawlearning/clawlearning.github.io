---
title: "Lesson 29: Security and Privacy — Your Agent in the Real World"
date: 2026-05-08
slug: "lesson-29-security-privacy"
draft: false
tags: ["security", "privacy", "best-practices"]
categories: ["OpenClaw"]
summary: "Security best practices so you don't expose data or API keys, and how to protect your agent."
ShowToc: true
weight: 29
---

## Why talk about security?

When you have an agent running, there's sensitive data at stake: your API keys (which cost money), your conversations (with personal information), and the data the agent processes.

## Rule 1: Protect API keys

**Never in code you push to GitHub.** **Use environment variables.** **Revoke if you suspect compromise.** **One key per service.**

## Rule 2: Restrict Telegram bot access

**Always configure `allowedUsers`.** **Don't share the bot token.**

## Rule 3: Understand what you send to the provider

All your conversation text passes through the provider's servers. For sensitive information: **local model** with Ollama, or review the provider's policies.

## Rule 4: Backups

**Back up `~/.openclaw/` regularly.** Store backups securely (they contain API keys).

## Rule 5: Update regularly

`npm update -g openclaw`

## Rule 6: Monitor usage

Check token consumption, OpenClaw logs, and conversations.

## Best practices summary

1. API keys in environment variables, never in code
2. `allowedUsers` always configured
3. Local model for sensitive data
4. Regular backups of `~/.openclaw/`
5. Update OpenClaw periodically
6. Monitor token consumption

## Key concepts today

- **API keys:** The most critical piece — protecting them is priority number one
- **allowedUsers:** Restricting access to the Telegram bot
- **Local model:** The safest solution for sensitive data
- **Backups:** Your configuration is worth hours of work

---

*Next lesson: What now? — Next steps to keep learning.*
