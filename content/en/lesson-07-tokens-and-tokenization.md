---
title: "Lesson 7: Tokens — How an LLM 'Reads' Text"
date: 2026-04-08
slug: "lesson-07-tokens-and-tokenization"
draft: false
tags: ["tokens", "tokenization", "llm"]
categories: ["LLM"]
summary: "What tokens are, why they're not words, and why it matters when talking about cost, speed, and limits."
ShowToc: true
weight: 7
---

## Why are we talking about tokens?

If you've read about AI, you've surely seen phrases like "the model supports 128K tokens" or "the price is $3 per million tokens". But what exactly is a token?

Understanding tokens is practical and important because they affect three things you'll care about when using an LLM: **how much it costs**, **how much text it can process**, and **how fast it responds**.

## A token is NOT a word

Here's the first surprise: an LLM doesn't read words. It reads **tokens** — chunks of text that can be whole words, parts of words, or even individual characters.

The process of converting text into tokens is called **tokenization**, done by a program called a **tokenizer** before the text reaches the model.

Let's look at some English examples:

- "Hello" → 1 token (common word, stays whole)
- "unhappiness" → 3 tokens: "un" + "happi" + "ness"
- "ChatGPT" → 2-3 tokens

And in other languages like Spanish or Catalan:

- "Hola" → 1 token (short, common word)
- "Inteligencia" → 3-4 tokens (longer word, less common in English-dominated training data)
- "Desarrollo" → 2-3 tokens

## Why does it work this way?

The reason is efficiency. Imagine if the model had to learn every word of every language as an independent unit. It would need a vocabulary of millions of entries.

Instead, with tokenization, the model works with a vocabulary of 30,000-100,000 tokens that it can combine to represent any text in any language. Common English words tend to be a single token. Less common words or words from other languages get split into pieces.

Think of it like Lego bricks: with a limited set of pieces you can build anything. The bigger pieces cover common cases quickly. The smaller pieces let you build any unusual word.

## Why do non-English languages "cost" more tokens?

This is important and has practical consequences: writing in Spanish, Catalan, Arabic, Japanese, or any non-English language consumes **more tokens** to express the same idea.

Why? Because the tokenizer was trained predominantly on English text. Common English words have become efficient tokens (1 word = 1 token). Words in other languages are often split into fragments because they appear less frequently in the training data.

In practice, a text in Spanish can consume between 20% and 50% more tokens than the same text in English.

## Input tokens vs output tokens

When you interact with an LLM, there are two flows of tokens:

**Input tokens:** The text you send to the model — your question, instructions, context, attached documents.

**Output tokens:** The text the model generates as a response. Each word of the response is one or more tokens generated sequentially.

Most providers charge for both, but at different prices. Output tokens are usually more expensive than input tokens (because generating requires more computation than reading).

## The price per token

When you see a price like "$3 per million input tokens", what does that mean in practical terms?

A quick rule for English: **1 token ≈ 0.75 words** (or conversely, **1 word ≈ 1.3 tokens**). For Spanish or Catalan, count **1 word ≈ 1.5-2 tokens**.

A million tokens in English is about 750,000 words — roughly 10 books. At $3 per million tokens, processing 10 books of input costs $3.

## Tools for counting tokens

You don't have to guess — there are free tools:

**OpenAI Tokenizer** (platform.openai.com/tokenizer): Paste text and it shows you how many tokens it has and how it's split.

**Tiktokenizer** (tiktokenizer.vercel.app): A visual interface where you see tokens in different colours.

## Why does all this matter to you?

If you're here because you want to set up an agent with OpenClaw, tokens will be a constant part of your daily routine:

1. **Cost:** Every interaction consumes tokens. Understanding how many you use helps control the bill.
2. **Context limit:** The model has a token limit it can process at once.
3. **Speed:** More output tokens = longer response time.
4. **Optimisation:** Writing efficient prompts saves tokens and money.

## Key concepts today

- **Token:** The smallest unit of text an LLM processes — can be a word, part of a word, or a character
- **Tokenization:** The process of converting text into tokens
- **Tokenizer:** The program that does the tokenization (each model family has its own)
- **Input vs output tokens:** Input is what you send, output is what the model generates
- **Quick rule:** 1 English word ≈ 1.3 tokens / 1 Spanish word ≈ 1.5-2 tokens

---

*Next lesson: The context window — an LLM's short-term memory.*
