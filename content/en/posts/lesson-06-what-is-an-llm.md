---
title: "Lesson 6: What is an LLM? The Model that Understands (and Generates) Text"
date: 2026-04-07
slug: "lesson-06-what-is-an-llm"
draft: false
tags: ["llm", "basics", "language-model"]
categories: ["LLM"]
summary: "We define LLM, understand why it's different from a Google search, and discover how text generation works."
ShowToc: true
weight: 6
---

## Week 2: into the heart of the revolution

If Week 1 was about understanding the broad "sea" of AI, now we dive into the specific technology behind the current explosion: **Large Language Models** (LLMs).

When you use ChatGPT, Claude, Gemini, or any modern chatbot, you're talking to an LLM. When an AI agent writes, summarises, translates, or codes, it does so with an LLM. Understanding what an LLM is and how it works is the key to understanding everything that comes next.

## What is an LLM?

An LLM is an AI model trained on massive amounts of text that can **understand and generate** human language.

Let's break down the name:

- **Large:** It has trillions of parameters and was trained on trillions of words
- **Language:** Its domain is text — understanding and producing it
- **Model:** As we saw in Lesson 4, it's a trained "brain"

An LLM isn't a database that looks up answers. It's not a search engine like Google. It doesn't copy and paste text from anywhere. What it does is **generate new text** word by word, based on patterns it learned during training.

## How does it work? Next-word prediction

The core mechanism of an LLM is surprisingly simple to understand: **it predicts the next word.**

If you give it the text "The cat climbed onto the...", the model calculates the probabilities of all possible words that could come next and picks the most likely one. "Table?" "Roof?" "Chair?" Based on all the text it saw during training, it decides which word makes the most sense.

But it doesn't do this once — it does it for every word. It generates the first one, adds it to the text, and then predicts the second. And the third. And so on, word by word, until the response is complete.

This might seem too simple a mechanism to produce coherent texts, complex reasoning, and useful answers. But when you train a model on trillions of words and give it trillions of parameters, "next-word prediction" becomes an emergent capability far more powerful than anyone expected.

## An LLM is not a search engine

When you search on **Google**, the search engine scans an index of web pages and shows you the ones that best match your query. The information comes from real web pages that exist on some server.

When you ask an **LLM**, the model generates a new response based on patterns it learned during training. It doesn't search the internet (unless it has web search enabled). It produces new text based on the statistical probability of words.

This explains two important things:

1. **Why LLMs can "make things up":** If the model predicts that the most probable next word is X, it will use it — even if it's incorrect. This is known as **hallucination**.

2. **Why LLMs don't always have up-to-date information:** The model knows what was in the training text, which has a cutoff date.

## What can an LLM do?

A single model can: **generate text**, **answer questions**, **translate**, **summarise**, **write code**, **analyse**, and **converse**. All with the same model — you simply change what you ask it (the prompt).

## What can't an LLM do?

**It doesn't "know" anything with certainty:** It predicts likely text, it doesn't assert truths.

**It has no experiences or emotions:** When an LLM says "I understand how you feel", it's generating the phrase that statistically follows your message. It doesn't feel anything.

**It doesn't think like a human:** The internal process is mathematical probability calculation, not conscious reasoning.

**It doesn't access the internet** (by default): Unless it has web search tools enabled.

**It doesn't learn from your conversations:** Each conversation starts from scratch. The model isn't modified when you talk to it.

## Key concepts today

- **LLM (Large Language Model):** An AI model trained on massive text to understand and generate language
- **Next-word prediction:** The core mechanism of LLMs — generating text by predicting what word comes next
- **Hallucination:** When an LLM generates incorrect information with apparent confidence
- **RLHF:** A technique that makes models better at following human instructions

---

*Next lesson: Tokens — how an LLM "reads" text.*
