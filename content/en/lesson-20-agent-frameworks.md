---
title: "Lesson 20: Agent Frameworks — OpenClaw, LangChain, and Others"
date: 2026-04-25
slug: "lesson-20-agent-frameworks"
draft: false
tags: ["frameworks", "openclaw", "langchain"]
categories: ["Agents"]
summary: "The options for building an agent: from simplest to most complex. Which to choose based on your level."
ShowToc: true
weight: 20
---

## What is an agent framework?

A framework is the agent's "assembly kit". It provides the structure connecting the model, tools, memory, and interface without you having to code it from scratch.

## OpenClaw: simplicity for everyone

**OpenClaw** is an open-source framework designed to be simple and direct. Quick installation (a single npm package), JSON file configuration, native Telegram support, installable skills from Clawhub, and memory with local embeddings.

**Ideal for:** Users who want a functional personal agent without complications. Sysadmins, tech enthusiasts.

## LangChain: the Swiss army knife

**LangChain** is probably the best-known framework. Huge ecosystem, extensive documentation, supports complex agent flows. But the learning curve is steep and it requires Python or JavaScript programming skills.

**Ideal for:** Developers who need full control.

## CrewAI: agents that collaborate

**CrewAI** focuses on **multi-agent systems**: several agents working together, each with a specific role. For example, a researcher agent, a writer, and an editor coordinating together.

**Ideal for:** Complex workflows with task division.

## AutoGen (Microsoft): conversations between agents

**AutoGen** is Microsoft's framework where agents communicate with each other as conversations — one proposes, another reviews, a third executes.

## How to choose?

**If you can't program** and want a personal agent → **OpenClaw**.

**If you know Python** and want more control → **LangChain** or **Pydantic AI**.

**If you need multiple coordinated agents** → **CrewAI** or **AutoGen**.

**If you're an enterprise** → **LangChain** or **Semantic Kernel**.

For this course, we'll work with **OpenClaw** because it best suits someone starting out.

## They all share the same foundations

Regardless of which framework you choose, they all work on the same principles you've learned: they use an LLM as a brain, connect to providers via API, give tools to the model, and manage memory.

If you understand the fundamentals, switching frameworks is just a matter of adapting to its configuration.

## Key concepts today

- **Framework:** Assembly kit connecting model + tools + memory + interface
- **OpenClaw:** Simple, configurable, ideal for non-programmers
- **LangChain:** Powerful, versatile, requires programming
- **CrewAI / AutoGen:** Multi-agent, for complex flows
- **All use the same foundations:** LLM + Provider + Tools + Memory

---

*Next lesson: We start Week 5 — What is OpenClaw and why we chose it.*
