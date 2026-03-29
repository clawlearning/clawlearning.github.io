---
title: "Lesson 23: Configuring Your First Model and Provider"
date: 2026-04-30
slug: "lesson-23-configuring-model-provider"
draft: false
tags: ["openclaw", "configuration", "provider", "api-key"]
categories: ["OpenClaw"]
summary: "We connect OpenClaw to an LLM: choosing a model, getting a free API key, and configuring openclaw.json."
ShowToc: true
weight: 23
---

## Connecting the brain

You have OpenClaw installed. Now it needs a brain — an LLM to connect to.

## Step 1: Get a free API key

**Google AI Studio (recommended):** Go to aistudio.google.com → Sign in → "Get API key" → "Create API key". Copy the key.

**NVIDIA NIM:** build.nvidia.com → Create account → Generate API key.

**Groq:** console.groq.com → Create account → API Keys → Create API Key.

## Step 2: Configure openclaw.json

```json
{
  "providers": {
    "google": {
      "baseUrl": "https://generativelanguage.googleapis.com/v1beta/openai",
      "apiKey": "YOUR_API_KEY_HERE"
    }
  },
  "models": {
    "default": {
      "provider": "google",
      "model": "gemini-2.0-flash"
    }
  }
}
```

## Step 3: First test

Run `openclaw` and type anything. If you get a coherent response, the connection works.

## Multiple providers

You can configure several providers and assign them to different tasks — a main model and a fast one, for example.

## Security

Never share `openclaw.json` (it contains your API keys). If you push config to GitHub, make sure it's in `.gitignore`.

## Key concepts today

- **openclaw.json:** Central configuration file
- **Provider block:** Defines baseUrl + apiKey
- **Model block:** Points to a provider and specifies the model
- **Multiple providers:** You can configure several and assign them to different tasks

---

*Next lesson: Connecting OpenClaw to Telegram — your agent on mobile.*
