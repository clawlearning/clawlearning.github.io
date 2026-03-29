---
title: "Lesson 16: What is an AI Agent? More Than a Chatbot"
date: 2026-04-21
slug: "lesson-16-what-is-an-agent"
draft: false
tags: ["agent", "automation", "basics"]
categories: ["Agents"]
summary: "We define AI agent, differentiate it from a chatbot, and understand why it's a qualitative leap."
ShowToc: true
weight: 16
---

## Week 4: the agent leap

So far you've learned how AI works, what LLMs are, and how to access them. All of that is essential theory, but static: you ask, the model answers. A text ping-pong.

An **agent** changes the rules of the game. An agent doesn't wait for you to talk to it — it can act on its own. It's not limited to generating text — it can execute real actions: search for information, send messages, read files, interact with external services.

## Chatbot vs Agent

The difference is fundamental:

A **chatbot** is reactive. You talk to it, it responds. If you don't say anything, it does nothing. ChatGPT in the browser is a chatbot.

An **agent** is proactive. It can receive a complex instruction and break it down into steps. It can decide which tools to use. It can execute actions without you intervening at every step. It can work in the background while you do other things.

Concrete example:

**Chatbot:** "What's the weather in Barcelona?" → "It's currently 18°C with partly cloudy skies."

**Agent:** "Every morning at 7, tell me today's weather and whether I should take an umbrella." → The agent sets up a schedule, every day at 7 it queries a weather API, interprets the data, and sends you a Telegram message with the recommendation. All by itself, every day, without you doing anything.

The difference isn't the model — it can be the same LLM. The difference is the **execution layer**: the agent has access to tools that allow it to do things in the real world.

## What does an agent actually do?

An AI agent can do anything it has tools configured for:

**Search the internet** for real-time information. **Read and process files.** **Send messages.** **Monitor things** periodically. **Generate and publish content** automatically. In fact, the website you're reading works exactly this way. **Interact with external services** through protocols like MCP.

## Why isn't it dangerous?

A current AI agent doesn't make decisions on its own about important things — it does what you've configured. It can't do anything it doesn't have specific tools for. If you don't give it access to your email, it can't send emails.

Think of an agent as a very obedient personal assistant: it will do exactly what you tell it, with the tools you give it, and nothing more.

## The agent explosion of 2025-2026

Three things converged: **Models good enough** to understand complex instructions. **Standard protocols (MCP)** for connecting agents to any service. **Accessible frameworks** like OpenClaw that let you set up an agent in minutes.

## Key concepts today

- **Chatbot:** Answers questions reactively
- **Agent:** Executes tasks proactively. Can act alone, use tools, and interact with services
- **Tools:** Capabilities given to the agent (web search, sending messages, reading files)
- **MCP:** Model Context Protocol — standard for connecting agents to external services
- **An agent is not autonomous** — it does what you configure, with the tools you give it

---

*Next lesson: Anatomy of an agent — the pieces of the puzzle.*
