---
title: "Lesson 8: The Context Window — an LLM's Short-Term Memory"
date: 2026-04-09
slug: "lesson-08-context-window"
draft: false
tags: ["context-window", "memory", "llm"]
categories: ["LLM"]
summary: "What the context window is, why it has a limit, what happens when you exceed it, and why an LLM doesn't remember previous conversations."
ShowToc: true
weight: 8
---

## What is the context window?

The **context window** is the total amount of text an LLM can process at once. It includes both what you send it (input) and what it generates (output).

Think of the context window as the model's "working memory" — the equivalent of your short-term memory when reading. You can keep a few pages of content in mind. If the text is very long, the early pages start to blur as you go on.

An LLM works the same way: everything that fits inside the context window, it can "see" and use. Whatever doesn't fit simply doesn't exist for it.

## How much fits?

Context window sizes vary hugely between models:

Early commercial models (GPT-3, 2020) had windows of **4,096 tokens** — about 3,000 words, barely more than a short article.

Today's top models offer much larger windows. Claude can work with **200,000 tokens** (about 150,000 words — a full book). GPT-4 reaches 128,000 tokens. Gemini 1.5 Pro reached one million tokens.

These numbers sound huge, but in practice they fill up faster than you'd think.

## Input + output = total context

An important point many people miss: the context window includes **everything** — both input and output.

If a model has a 128K token window and you send it a 100K token document, it only has 28K tokens left for generating the response. In a conversation, every message from you and every response from the model accumulates inside the window.

## What happens when you hit the limit?

When the conversation or input exceeds the context window, the model has to "discard" information:

**Truncation:** The system removes the oldest messages from the conversation to make room for new ones. The model "forgets" the beginning of the conversation.

**Error:** Some systems simply reject the input if it exceeds the limit.

## An LLM doesn't remember between conversations

This is perhaps the biggest misconception: **an LLM doesn't remember previous conversations.**

Every time you open a new chat with ChatGPT, Claude, or any LLM, the model starts completely from scratch. It doesn't know who you are, what you asked it yesterday, or what you agreed on last week.

Why? Because the model is a static program that doesn't change when you talk to it. Your conversations don't modify the model's parameters.

So how do ChatGPT and Claude seem to "remember" things? Because the platforms add layers on top of the model:

- **Conversation history:** The system saves previous messages and re-sends them to the model with each interaction
- **Persistent memory:** Some systems extract key information from conversations and store it in a separate database
- **System prompt:** Fixed instructions sent to the model with every message

These are all external "tricks" — the model itself remembers nothing.

## Practical tips

**Be concise:** Don't fill the context window with unnecessary text.

**Structure long conversations well:** If a conversation gets very long, consider starting a new one with a summary of what's been discussed.

**Provide relevant context:** If you need the model to know something, include it in your message. Don't assume it "knows" from a previous conversation.

## Key concepts today

- **Context window:** The total amount of tokens an LLM can process at once (input + output)
- **Truncation:** When the system removes old messages to make room for new ones
- **An LLM doesn't remember between conversations:** Each chat starts from zero; "memory" is managed by external layers
- **Conversation history:** A platform trick — it re-sends previous messages to the model, consuming tokens

---

*Next lesson: The LLM map — who's who in 2026.*
