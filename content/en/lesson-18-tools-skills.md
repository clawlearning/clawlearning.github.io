---
title: "Lesson 18: Tools and Skills — the Agent's Hands"
date: 2026-04-23
slug: "lesson-18-tools-skills"
draft: false
tags: ["tools", "skills", "mcp"]
categories: ["Agents"]
summary: "What tools and skills are, why they're essential, how an agent decides which to use, and what MCP is."
ShowToc: true
weight: 18
---

## Why tools change everything

Imagine you have a very intelligent assistant locked in a room with no phone, no computer, nothing. They can think brilliantly, but can't do anything. You ask "find me cheap flights to Lisbon" and they say "great idea, but I don't have internet access".

That's an LLM without tools. Intelligent but useless for practical tasks. Tools are the agent's phone and computer.

## What is a tool?

A **tool** is a specific function the agent can execute. Technically, it's a piece of code that does something concrete and that the model can "call" when it needs to.

Common examples: **Web search.** **Read URLs.** **Send Telegram messages.** **Read/write files.** **Execute commands.**

## What is a skill?

In the OpenClaw context, a **skill** is the name given to a package of related tools. For example, a "Reddit" skill might include: searching posts, reading comments, getting popular posts.

## How does the agent decide which tool to use?

This is one of the most impressive capabilities of modern LLMs. The model doesn't follow rigid rules — it **reasons** about which tool it needs.

You send: "What's in the news about AI today?" → The model "thinks": I need current information, I have a web search tool, I'll use it. And it performs the search.

It can even chain tools: search for information, save it to a file, and send you a message to let you know.

## MCP: the standard that connects everything

**MCP** (Model Context Protocol) is a standard created by Anthropic that defines how agents connect to external services.

Before MCP, every integration was a custom project. MCP standardises the communication. A service implementing MCP can connect to any agent supporting MCP — no custom code needed. Think of MCP as the USB of AI tools: a universal connector.

Today there are MCP servers for hundreds of services: Google Calendar, Gmail, Slack, GitHub, databases, and many more.

## Where to find tools

**Clawhub.ai:** The skill directory for OpenClaw. **Community MCP servers.** **Custom skills** if you have technical knowledge.

## Precautions

**Principle of least privilege:** Only give the agent the tools it actually needs.

**Review what it does:** Especially at first, monitor how the agent uses tools.

**Sensitive tools:** Tools that send emails or publish content can cause problems if the agent misuses them.

## Key concepts today

- **Tool:** A specific function the agent can execute
- **Skill:** A package of related tools (OpenClaw terminology)
- **MCP (Model Context Protocol):** Standard for connecting agents to external services
- **The agent decides which tool to use** — it doesn't follow rigid rules, it reasons about the best option
- **Principle of least privilege:** Only give it the tools it needs

---

*Next lesson: An agent's memory — how it remembers (and forgets).*
