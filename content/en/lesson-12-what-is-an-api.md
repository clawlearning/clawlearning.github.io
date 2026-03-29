---
title: "Lesson 12: What is an API? The Gateway to LLMs"
date: 2026-04-15
slug: "lesson-12-what-is-an-api"
draft: false
tags: ["api", "keys", "access"]
categories: ["Infrastructure"]
summary: "We demystify APIs — what they are, how they work, and why you need one for an agent."
ShowToc: true
weight: 12
---

## Why do you need to know what an API is?

If you want to use an LLM from the browser (ChatGPT, Claude.ai), you don't need to know what an API is. But if you want your **own agent** — a Telegram bot that works for you, an automation that processes emails — you need to connect to the model another way. That way is the API.

## What is an API?

**API** stands for Application Programming Interface. It sounds intimidating, but the concept is simple.

An API is a **standardised communication system** between two programs. It allows one program to make requests to another and receive responses, without any human intervening.

The clearest analogy is a restaurant:

1. **You** (the agent/program) are the customer
2. **The menu** is the API documentation — it tells you what you can order
3. **The waiter** is the API — takes your order to the kitchen and brings back the dish
4. **The kitchen** is the model (LLM) — processes the order and prepares the result

You don't walk into the kitchen to cook. You place your order with the waiter, in a format they understand, and they handle the entire process.

## API vs web interface

When you use ChatGPT in the browser, there's an API behind it — but the web interface hides all the complexity.

When you use the API directly, you build the request yourself. You tell the model exactly what you want: which model to use, how many response tokens, at what temperature, and what text to process.

The key difference: the web interface is for **interactive humans**. The API is for **autonomous programs**.

## API keys: your access credential

An **API key** is like a special password that identifies you to the provider. Every time your agent makes a request, it sends the API key so the provider knows who you are and which account to charge.

Golden rules for API keys:

**Never share an API key.** If someone has it, they can make requests on your account and you'll pay the bill.

**Never put it in code you push to GitHub.** There are bots that scan GitHub looking for exposed API keys and exploit them within minutes.

**Store them in environment variables.** Instead of putting the key directly in code, store it as an operating system variable.

**You can revoke them and create new ones.** If you think a key has been compromised, delete it immediately.

## The cost of the API

Most providers charge **per token processed**:

- If your agent processes 1,000 requests a day, you pay for all the tokens
- If you don't use it one day, you pay nothing
- Output tokens are usually more expensive than input tokens

## OpenAI-compatible APIs

Many inference providers use an API format **compatible with OpenAI**. This means the way to send requests is the same for all of them — you only change the provider's URL and the API key.

For OpenClaw, this is very practical: you can switch providers by simply changing two parameters in the configuration.

## Key concepts today

- **API:** A communication interface between programs — the "waiter" between your agent and the model
- **API key:** A unique credential that identifies you to the provider. Never share it
- **Request:** The message you send to the API (includes model, message, parameters)
- **Price per token:** The billing model used by most LLM APIs
- **OpenAI-compatible API:** A standard format many providers adopt for interoperability

---

*Next lesson: Free vs paid — where can I use AI without paying?*
