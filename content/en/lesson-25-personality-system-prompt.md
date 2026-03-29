---
title: "Lesson 25: Giving Your Agent Personality — the System Prompt"
date: 2026-05-02
slug: "lesson-25-personality-system-prompt"
draft: false
tags: ["openclaw", "system-prompt", "personality"]
categories: ["OpenClaw"]
summary: "Write an effective system prompt that defines how your agent behaves, speaks, and thinks."
ShowToc: true
weight: 25
---

## The system prompt: your agent's DNA

If the model is the brain and the tools are the hands, the **system prompt** is the **personality**. It defines how the agent behaves: what language it speaks, what tone it uses, what rules it follows, what it knows about you.

Two agents with the same model and tools can be completely different if they have different system prompts.

## Where to configure it

In OpenClaw, the system prompt is a Markdown file at `~/.openclaw/workspace/system-prompt.md`.

## Structure of a good system prompt

### 1. Identity

"You are a personal assistant specialising in technology. Your name is Atlas. You're direct and practical."

### 2. Behaviour

"Always respond in English. Use technical terms naturally. Be concise."

### 3. Context

"The user is an IT professional with experience in Linux and Docker."

### 4. Limits

"Don't give medical or legal advice. If a request is ambiguous, ask for clarification."

## Tips

**Be specific.** "Be friendly" is vague. "Respond in a warm tone, as if talking to a colleague" is concrete.

**Iterate.** The first system prompt won't be perfect. Use it for a few days, identify what you don't like, and adjust.

**Don't overload it.** A 3,000-word system prompt consumes tokens with every message.

**Language matters.** Write it in the language you want responses in.

## Key concepts today

- **System prompt:** Permanent instructions defining personality and behaviour
- **`~/.openclaw/workspace/system-prompt.md`:** Where the system prompt lives in OpenClaw
- **Four parts:** Identity + Behaviour + Context + Limits
- **Iterate:** It improves with use

---

*Next lesson: We start Week 6 — Essential skills for your agent.*
