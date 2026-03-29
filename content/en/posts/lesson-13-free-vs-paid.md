---
title: "Lesson 13: Free vs Paid — Where Can I Use AI Without Paying?"
date: 2026-04-16
slug: "lesson-13-free-vs-paid"
draft: false
tags: ["cost", "free", "ollama", "providers"]
categories: ["Infrastructure"]
summary: "A map of real free options for using AI: from web chats to local models on your computer."
ShowToc: true
weight: 13
---

## The myth: "AI is expensive"

One of the most common barriers to entry is the perception that using AI costs money. And yes, the best commercial models have a cost. But there's an enormous range of free options that let you do very interesting things without spending a penny.

## Level 1: Free web chats

The easiest way to use AI for free is through the web interfaces of the major models:

**ChatGPT (OpenAI):** The free version gives access to GPT with a message limit per hour.

**Claude (Anthropic):** Claude.ai offers a free tier with model access, also with limits.

**Gemini (Google):** Google AI Studio lets you use Gemini for free.

**Limitations:** These free tiers don't give API access. You can chat on the web, but you can't connect an agent.

## Level 2: APIs with a free tier

Some providers offer free APIs with usage limits:

**Google AI Studio:** Free access to the Gemini API with generous limits. One of the best options for starting without paying.

**NVIDIA NIM:** Access to several models (including Kimi K2.5) with a free tier. It has rate limits (~40 requests per minute) but is functional for agents with moderate usage.

**Groq:** Free tier with impressive speed. Ideal for testing and low-volume agents.

**Limitations:** All have request limits. Free tiers can disappear or change terms at any time.

## Level 3: Local models (zero usage cost)

Here comes the most powerful option for a zero budget: **running a model on your own computer.**

With tools like **Ollama**, you can download open models and run them locally. Once downloaded, usage is completely free.

**Hardware requirements:**

For small models (1-3B parameters): 8GB RAM, any modern CPU. Slow but functional responses.

For medium models (7-8B parameters): 16GB RAM, better with a dedicated GPU. Acceptable speed for interactive use.

For large models (13-70B parameters): 32-64GB RAM or GPU with plenty of VRAM. We're talking serious hardware here.

**Advantages:** Zero cost, total privacy, works without internet.

**Disadvantages:** You need decent hardware, local models are less powerful than the best commercial models.

## The smart combination

Most people who build agents combine several options:

**Expensive model for important decisions:** Claude or GPT for tasks requiring maximum quality.

**Free model for volume:** NVIDIA NIM or a local model for routine, repetitive tasks.

This strategy lets you have a powerful agent without going broke.

## Practical summary

For someone starting out who wants to spend zero:

1. **Start with Google AI Studio** (free Gemini API) for your first agent
2. **Install Ollama** with a 7-8B model to experiment locally
3. **Sign up for NVIDIA NIM** as a backup provider

With these three options you have a functional agent without paying anything.

## Key concepts today

- **Free API tiers:** Google AI Studio, NVIDIA NIM, Groq — free access with limits
- **Local models (Ollama):** Download the model and run it on your hardware. Zero usage cost
- **Smart combination:** Expensive model for quality + cheap/free model for volume
- **Cost is per token:** You pay for each word processed, not for a subscription

---

*Next lesson: Local models — running an LLM on your computer with Ollama.*
