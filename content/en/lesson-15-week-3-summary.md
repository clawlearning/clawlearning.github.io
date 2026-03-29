---
title: "Lesson 15: Summary — The Complete Map for Accessing an LLM"
date: 2026-04-18
slug: "lesson-15-week-3-summary"
draft: false
tags: ["summary", "comparison", "decision"]
categories: ["Infrastructure"]
summary: "We consolidate everything learned with a clear mental diagram, a comparison table, and a decision tree for choosing your model and provider."
ShowToc: true
weight: 15
---

## Halfway: where are we?

We're three weeks in and you already have solid foundations. Let's recap:

**Week 1** you understood what AI is, where it comes from, and that you already use it every day. **Week 2** you discovered how LLMs work: tokens, context windows, models, prompts. **Week 3** you learned how to access them: providers, APIs, free options, local models.

Today we consolidate everything with a global view.

## The complete diagram

```
YOU (human or agent)
    │
    ▼
INTERFACE (web, Telegram, app, terminal)
    │
    ▼
FRAMEWORK (OpenClaw, LangChain, or the API directly)
    │
    ▼
PROVIDER (OpenAI, Anthropic, Groq, NVIDIA NIM, local Ollama)
    │
    ▼
MODEL (GPT, Claude, LLaMA, Mistral, Qwen...)
    │
    ▼
RESPONSE (text generated token by token)
```

Each layer is independent of the others. You can switch providers without changing frameworks. This modularity is what makes the ecosystem so flexible.

## Provider comparison table

| Provider | Models | Price | Speed | Free tier | Best for |
|----------|--------|-------|-------|-----------|----------|
| OpenAI | GPT-4, GPT-5 | High | Good | Limited (web) | Maximum quality |
| Anthropic | Claude | High | Good | Limited (web) | Complex instructions, long docs |
| Google AI | Gemini | Mid-low | Good | Yes (API) | Starting free |
| Groq | LLaMA, Mistral | Low | Very fast | Yes (API) | Speed |
| NVIDIA NIM | Kimi, LLaMA | Low | Acceptable | Yes (API) | Free agent |
| OpenRouter | All | Variable | Variable | No | Easy model switching |
| Ollama (local) | All open | Zero | Hardware-dependent | N/A | Privacy, zero cost |

## Decision tree

**Do you have a budget?** If **no** → local Ollama (if you have 16GB+ RAM) or Google AI Studio / NVIDIA NIM.

**What do you need?** Maximum quality → Claude or GPT. Speed → Groq. Privacy → Ollama. Cheap volume → inference provider with open model.

**How complex is your use?** Simple → 7-8B model. Intermediate → 30-70B or mid-range commercial. Advanced → top-tier models.

## Suggested practical exercise

Try three free models and compare responses:

1. **ChatGPT** (chat.openai.com)
2. **Claude** (claude.ai)
3. **Google AI Studio** (aistudio.google.com)

Ask the **same question** to all three. Compare the responses: which is clearest? Most accurate? Which tone do you prefer?

## Week 3 glossary

- **Provider:** Who gives you access to the model
- **API:** Communication interface between programs
- **API key:** Secret credential that identifies you
- **Ollama:** Tool for running local models
- **Quantization:** Reducing model size for efficiency
- **OpenRouter:** Model and provider aggregator
- **VRAM:** GPU memory

## Next week

With all this foundational knowledge, we're ready for the big leap: **AI agents**. Not simple chatbots that answer questions, but programs that execute tasks, use tools, and work autonomously.

Week 4 shifts gears.

## Key concepts today

- **The complete flow:** You → Interface → Framework → Provider → Model → Response
- **Each layer is interchangeable:** You can switch model, provider, or framework independently
- **The choice depends on your use case:** There's no universal "best"
- **Combination is key:** Expensive model for quality + cheap model for volume

---

*Next lesson: We start Week 4 — What is an AI agent? More than a chatbot.*
