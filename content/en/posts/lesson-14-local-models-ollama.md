---
title: "Lesson 14: Local Models — Running an LLM on Your Computer with Ollama"
date: 2026-04-17
slug: "lesson-14-local-models-ollama"
draft: false
tags: ["ollama", "local", "hardware", "models"]
categories: ["Infrastructure"]
summary: "What it means to run a model locally, when it makes sense, how Ollama works, and what models you can run based on your hardware."
ShowToc: true
weight: 14
---

## What does "local model" mean?

So far we've talked about models running on someone else's servers — OpenAI, Anthropic, Google. You send text over the internet, they process it, and return the response.

A **local model** is the exact opposite: you download the model to your computer and run it yourself. The text never leaves your machine. You don't need internet. You don't pay per token.

It's like the difference between streaming music (Spotify) and having MP3s on your hard drive.

## When does a local model make sense?

**It makes sense when:** you want total privacy, zero usage cost, offline capability, or you want to experiment with different models without worrying about the bill.

**It doesn't make sense when:** you need the best possible quality, your computer is old or has little RAM, you need very fast responses with large models, or you'd rather not deal with installations.

## Ollama: the easiest way

**Ollama** makes running local models as easy as installing a program and typing a command.

Without Ollama, running a local model requires: downloading model weights, installing Python frameworks, configuring CUDA... A considerable technical hassle.

With Ollama, the process is:

1. Install Ollama (a single program)
2. Type `ollama pull llama3.1:8b` (downloads the model)
3. Type `ollama run llama3.1:8b` (you're now talking to the model)

Ollama handles everything: downloads the model, detects whether you have a GPU, optimises memory, and serves a local API compatible with the OpenAI format. That last point is key: any program that works with the OpenAI API (including OpenClaw) can use an Ollama model by simply changing the URL.

## What models can you run?

It depends on your hardware. The general rule is you need between 0.5GB and 1GB of RAM (or GPU VRAM) per billion parameters of the quantized model.

**8GB RAM:** 1-3B models. Functional for basic tasks.

**16GB RAM:** 7-8B models. This is where it starts being genuinely useful. With a dedicated GPU, speed is acceptable.

**32GB RAM:** 13-14B models. Notable improvement in quality.

**64GB+ or powerful GPU:** 30-70B models. Quality comparable to commercial models.

## CPU vs GPU

**CPU:** Always works, no special GPU needed. But it's slow. A 7B model on CPU can take 10-30 seconds per sentence.

**NVIDIA GPU:** Much faster. The same 7B model can respond in 1-3 seconds. NVIDIA GPUs with CUDA are the standard.

**AMD GPU / Apple Silicon:** Ollama also supports AMD GPUs (ROCm) and Apple Silicon chips (M1/M2/M3/M4), which are surprisingly good for local inference thanks to their unified memory.

## Quantization: making the model smaller

When you download a model with Ollama, you typically download it **quantized**. Quantization reduces the precision of the parameters (from 32 bits to 8 bits or less) to make it smaller and faster.

A 7B LLaMA model without quantization takes about 14GB. Quantized to 4 bits (Q4), it takes about 4GB. The quality loss is surprisingly small.

When you see names like `llama3.1:8b-q4_0`, the `q4_0` indicates the quantization level.

## Ollama as a local API

When you run Ollama, it serves a **local API** on port 11434. For an OpenClaw agent:

- URL: `http://localhost:11434/v1`
- Model: `llama3.1:8b` (or whichever you've downloaded)
- API key: not needed (it's local)

The agent talks to the local model exactly as it would talk to OpenAI or Anthropic.

## Key concepts today

- **Local model:** An LLM that runs on your hardware, without depending on external services
- **Ollama:** A tool that simplifies downloading and running local models
- **Quantization (Q4, Q8):** Reducing model precision to make it smaller and faster
- **VRAM:** GPU memory — determines how large a model you can run
- **Local API:** Ollama serves an OpenAI-compatible API on port 11434

---

*Next lesson: Week 3 summary — the complete map for accessing an LLM.*
