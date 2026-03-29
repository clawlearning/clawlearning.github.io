---
title: "Lesson 11: What is a Provider? Who Gives You Access to Models"
date: 2026-04-14
slug: "lesson-11-what-is-a-provider"
draft: false
tags: ["provider", "access", "infrastructure"]
categories: ["Infrastructure"]
summary: "Understand the model → provider → user chain, and why the same model can cost different amounts depending on where you use it."
ShowToc: true
weight: 11
---

## Week 3: how to access models

You now know what an LLM is, how it works, and what models exist. Now comes the practical question: **how do I access one?** You can't ring up Anthropic and ask them to activate Claude. You need an intermediary — and that's a provider.

## What is a provider?

A **provider** is a company or service that gives you access to an AI model. It's the intermediary between you and the model.

Think of a simple analogy: the model is a film. The provider is the platform where you watch it — Netflix, HBO, Amazon Prime. The same film can be available on several platforms, with different prices and conditions. LLMs work exactly the same way.

## Direct providers vs inference providers

### Direct providers

These are the companies that **create** the model and sell it to you directly. **OpenAI** sells access to GPT. **Anthropic** sells access to Claude. **Google** offers Gemini.

With a direct provider, you're guaranteed to be using the "official" model with the latest updates. It's usually the most expensive option.

### Inference providers

These are companies that **don't create** models, but run them on their servers and offer them to you. They take open models (LLaMA, Mistral, Qwen) and make them available to everyone.

**Groq** is known for its brutal speed. **Together AI** offers a wide variety of open models. **NVIDIA NIM** provides access with a free tier. **OpenRouter** is an aggregator — a single access point to dozens of models.

The advantage of inference providers is price and variety. The downside is they don't always have the latest models.

## Why does the price vary?

**Hardware:** Each provider uses different hardware. **Scale:** A large provider can offer lower prices. **Margin:** Each provider decides their margin. **Optimisations:** Some apply quantization that can slightly affect quality.

## The complete chain

```
You → Agent (OpenClaw) → Provider (API) → Model (LLM) → Response
```

## How to choose a provider?

**Cost:** If budget is zero, look for free tiers (NVIDIA NIM, Google AI Studio, Groq free).

**Speed (latency):** If you need fast responses, Groq is king.

**Model quality:** If you need the best model possible, go to the direct provider.

**Reliability:** Large providers have robust infrastructure. Free tiers may have outages.

## Key concepts today

- **Provider:** A company or service that gives you access to an AI model
- **Direct provider:** The model creator who sells it to you (OpenAI, Anthropic, Google)
- **Inference provider:** A company running open models on their servers (Groq, Together, NVIDIA NIM)
- **OpenRouter:** An aggregator giving access to multiple models and providers from a single point
- **The chain:** You → Agent → Provider (API) → Model → Response

---

*Next lesson: What is an API? — The gateway to LLMs.*
