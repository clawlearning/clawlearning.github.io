---
title: "Lesson 17: Anatomy of an Agent — the Pieces of the Puzzle"
date: 2026-04-22
slug: "lesson-17-agent-components"
draft: false
tags: ["agent", "components", "architecture"]
categories: ["Agents"]
summary: "The components of an AI agent: brain, tools, memory, senses, and hands. How they fit together to create a working agent."
ShowToc: true
weight: 17
---

## The agent's pieces

An AI agent isn't a single thing — it's a set of components working together. Understanding each piece will help you configure your agent wisely.

## The brain: the LLM

The heart of any agent is an LLM. It's what "thinks": interprets your instructions, decides which tools to use, generates responses, and coordinates the entire process.

The first decision when configuring an agent is which model to use as its brain. A powerful model (Claude Sonnet, GPT-4) will give smarter responses but cost more. A small model (LLaMA 8B, Phi) will be cheaper and faster but less capable.

The brain sets the agent's "ceiling": no matter how good the rest of the configuration is, the agent can't be smarter than the model powering it.

## The hands: tools/skills

If the brain thinks, the hands act. **Tools** are the specific capabilities you give the agent to do things in the real world.

Without tools, an agent is a chatbot. With tools, it can: search the web, read files, send messages, access services like Google Calendar or Slack, execute code, generate images.

The agent decides which tool to use based on the task. This is an emergent capability of modern LLMs: they learn to select the right tool from the context of the request.

## Memory: remembering and learning

**Short-term memory (context window):** What the agent "remembers" within a single conversation. Limited by the context window size.

**Long-term memory (persistent):** Information stored outside the model, in a database. The agent can query it to retrieve information from previous interactions. It typically uses techniques like embeddings and semantic search.

Long-term memory is what makes an agent "know you": your name, your preferences, your work context.

## The senses: how information comes in

**Telegram:** The most common channel for personal agents. **Email.** **Web.** **Files.** **Cron (time):** It can activate automatically at scheduled times.

## The nervous system: the framework

The **framework** is the software connecting all the pieces. It takes your message, passes it to the model along with instructions and history, receives the response, detects if the model wants to use a tool, executes it, and returns the result.

## How it all fits together

Example: you tell your agent via Telegram: "What are the latest AI news in the UK?"

1. **Telegram** receives your message and passes it to **OpenClaw**
2. OpenClaw builds the prompt with your message + system prompt + history
3. The prompt is sent to the **model** via the provider's API
4. The model decides it needs current information and requests the **web search** tool
5. OpenClaw executes the search and returns the results
6. The model processes the results and generates a summary
7. The response reaches you via **Telegram**

All of this happens in seconds, automatically.

## Key concepts today

- **Brain (LLM):** The model that thinks, reasons, and decides
- **Hands (tools/skills):** The tools that let the agent act in the real world
- **Memory:** Short-term (context window) + long-term (persistent database)
- **Senses (inputs):** Telegram, email, web, files, cron
- **Nervous system (framework):** The software connecting all pieces (OpenClaw)

---

*Next lesson: Tools and Skills — the agent's hands in detail.*
