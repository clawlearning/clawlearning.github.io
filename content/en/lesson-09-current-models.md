---
title: "Lesson 9: The LLM Map — Who's Who in 2026"
date: 2026-04-10
slug: "lesson-09-current-models"
draft: false
tags: ["models", "comparison", "llm"]
categories: ["LLM"]
summary: "Meet the main models of the moment, the companies behind them, and the key differences to help you choose."
ShowToc: true
weight: 9
---

## Why know the map?

When you start configuring your own agent, one of the first decisions will be: which model do I use? There are dozens of models available and new ones appear every week. Having a clear mental map will help you choose wisely instead of blindly.

## The big players: companies and models

### OpenAI — The commercial pioneer

OpenAI launched ChatGPT and ignited the revolution. Their **GPT** family models are the best known on the market. They focus on being the most powerful and first with new capabilities. They have the largest user base and the most mature developer ecosystem. The trade-off is that they're one of the most expensive providers and their models are completely closed.

### Anthropic — Safety and helpfulness

Anthropic, founded by former OpenAI members, creates the **Claude** family of models. Their philosophy is building powerful but safe AI — with strong emphasis on following instructions correctly, being honest about limitations, and avoiding harmful content.

Claude particularly excels at tasks requiring complex instructions, quality writing, and analysis of long documents (with a 200K token context window).

### Google — The integrated ecosystem

Google competes with the **Gemini** family. Google's advantage is integration with its ecosystem: Gmail, Google Docs, Google Search, Android. Google was also the pioneer in the research that made LLMs possible — the Transformer paper came from Google.

### Meta — The open source leader

Meta publishes its **LLaMA** models as open source. Anyone can download, use, and modify them. This strategy has enormously accelerated innovation.

### Mistral — The European alternative

Mistral is a French company that has proven competitive models can be built from Europe. Their models stand out for their efficiency.

### Chinese models

**DeepSeek** shook the market with models rivalling the best Western ones. **Qwen** (Alibaba) and **Kimi** (Moonshot AI) offer powerful models, many of them open source.

## Open models you can run yourself

If you want to run a model on your own computer (with Ollama, which we'll cover in Week 3):

**LLaMA (Meta):** The benchmark. Models from 8B to 405B parameters.

**Mistral / Mixtral:** Efficient models with excellent performance for their size.

**Qwen (Alibaba):** Good multilingual models. Especially strong in non-English languages.

**Gemma (Google):** Small, efficient models published as open source.

**Phi (Microsoft):** Surprisingly capable small models (3-4B parameters).

## How to choose a model?

The choice depends on four factors:

**1. Task:** For general conversation and complex reasoning, large models are superior. For specific, repetitive tasks, a small model may suffice.

**2. Budget:** Commercial models charge per token. Local open models have zero usage cost, but you need hardware.

**3. Privacy:** If your data is sensitive, a local model ensures nothing leaves your computer.

**4. Quality vs speed:** Large models are more accurate but slower. Small ones are faster and cheaper, but may make more mistakes.

There's no universal "best model" — there's the best model **for your use case**.

## Rankings: where to compare

**Chatbot Arena** (lmsys.org): Ranking based on human votes. The most reliable.

**Artificial Analysis** (artificialanalysis.ai): Compares models on speed, price, and quality.

**Open LLM Leaderboard** (Hugging Face): Ranking of open models.

## The landscape changes fast

An important note: this map expires quickly. Every few months new models appear that shift the balance. That's why understanding the **criteria** for choosing is more important than memorising model names.

## Key concepts today

- **Closed models (GPT, Claude, Gemini):** More powerful, API access, pay per token
- **Open models (LLaMA, Mistral, Qwen):** Downloadable, locally executable, zero usage cost
- **Chatbot Arena:** Model ranking based on human votes
- **There's no "best model":** There's the best model for your use case, budget, and needs

---

*Next lesson: Your first prompt — how to talk to an LLM.*
