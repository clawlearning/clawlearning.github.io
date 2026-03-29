---
title: "Lesson 28: Multiple Agents — When One Isn't Enough"
date: 2026-05-07
slug: "lesson-28-multiple-agents"
draft: false
tags: ["openclaw", "multi-agent", "architecture"]
categories: ["OpenClaw"]
summary: "When it makes sense to have more than one agent, how to organise them, and how to combine expensive and cheap models intelligently."
ShowToc: true
weight: 28
---

## Why more than one agent?

When you start, a single agent is enough. But as you give it more responsibilities, you reach a point where a single agent isn't the best solution.

## Reasons for separating agents

**Model specialisation:** Different tasks require different models. A daily briefing doesn't need the most powerful model. A complex analysis does.

**Cost:** Separating by model lets you assign the expensive model only to tasks that need it.

**Availability:** If one agent fails, the others keep running.

**Organisation:** Each agent with its own system prompt, skills, and memory.

## Practical example: two coordinated agents

**Primary agent (quality):** Claude Sonnet or GPT-4. For interactive conversation, important decisions.

**Secondary agent (volume):** Kimi K2.5 via NVIDIA NIM or LLaMA via Groq. For automatic tasks, briefings, translations. Near-zero cost.

## Workspaces in OpenClaw

OpenClaw supports **workspaces** — separate environments with independent configuration. Each workspace can have a different model, different skills, and a different system prompt.

## Key concepts today

- **Separate by cost:** Expensive model for quality, cheap model for volume
- **Separate by function:** Each agent an expert in its domain
- **Workspaces:** Separate environments within OpenClaw
- **Don't overcomplicate:** If one agent is enough, one is better than two

---

*Next lesson: Security and privacy — your agent in the real world.*
