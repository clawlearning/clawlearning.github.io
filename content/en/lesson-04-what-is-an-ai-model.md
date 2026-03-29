---
title: "Lesson 4: What is an AI Model? (no maths required)"
date: 2026-04-03
slug: "lesson-04-what-is-an-ai-model"
draft: false
tags: ["model", "training", "parameters"]
categories: ["Fundamentals"]
summary: "What a model is, how it's trained, why there are big and small ones, and why not all models are equal."
ShowToc: true
weight: 4
---

## What is a model?

An AI model is a program that has been **trained on data** to perform a task. Think of it as a specialised brain: it has absorbed an enormous amount of information and learned patterns that allow it to make predictions or generate content.

The word "model" can be confusing because it's used in science with different meanings. In AI, a model is simply the result of training: a file (or set of files) containing everything the machine has learned.

## Training: how a model learns

Imagine you want to teach a child to recognise cats. You don't give them a definition ("four-legged animal with whiskers") — you show them hundreds of photos of cats and say "this is a cat". With enough examples, the child learns to recognise cats they've never seen before.

An AI model works the same way, but at a massive scale:

1. **You feed it training data** — millions or trillions of examples
2. **The model looks for patterns** — connections in the data that allow it to predict
3. **It's evaluated and corrected** — if it gets things wrong, the internal parameters are adjusted
4. **The process is repeated** until the predictions are good enough

For a language model like Claude or GPT, the "training data" is enormous amounts of text: books, articles, websites, code, conversations. The model learns how language works: which words typically go together, how a sentence is structured, how an argument develops.

## Parameters: the size of the brain

When you hear about "7B", "70B", or "405B" models, the B stands for **billions of parameters**.

A parameter is an internal number in the model that gets adjusted during training. Think of parameters as the synaptic connections of the brain: each one stores a tiny piece of what the model has learned.

More parameters means the model can learn more complex and subtle patterns. But it also means it needs more memory to run and is slower.

To put this in perspective:

- A small model (1-3B parameters) can run on your computer. It handles basic tasks well but falls short on complex reasoning.
- A medium model (7-13B) needs a decent computer with a GPU. It can hold coherent conversations and handle varied tasks.
- A large model (70B+) needs powerful servers. This is what commercial services like ChatGPT or Claude use.
- A giant model (200B+) needs entire data centres. These are the cutting-edge models from the big companies.

## Bigger isn't always better

A common trap is thinking that the biggest model will always be the best. It's not.

A small model well-trained on quality data can outperform a large model trained on mediocre data. The quality of the training data is just as important as the model size — and often more so.

Also, a giant model can be overkill for your task. If you only need it to summarise emails, a 7B model can do that perfectly. Spending money on a 200B model for that task would be like hiring a lorry to pop out for bread.

## The importance of data

There's a saying: **"Garbage in, garbage out"** — if you feed it rubbish, you get rubbish back. This is especially true for AI models.

A model trained on texts full of errors will have errors. A model trained mostly on English text will be worse at Catalan or Spanish. A model trained on biased data will reproduce those biases.

That's why companies training models invest heavily in **curating data**: selecting, cleaning, and balancing the texts they train their models on.

## Open vs closed models

**Closed models** (proprietary): You can't see how they're made or download them. You can only use them through the company's API or website. Examples: OpenAI's GPT, Anthropic's Claude, Google's Gemini.

**Open models** (open source or open weights): You can download the model, run it on your own computer, modify it, and use it however you like. Examples: Meta's LLaMA, Mistral, Qwen.

Closed models tend to be more powerful and don't require your own hardware. But you depend on the company, pay per use, and your data passes through their servers.

Open models give you full control, privacy, and zero cost per use. But you need hardware to run them, and they're often less powerful than the best closed models.

## The chef analogy

If all of this still sounds abstract, think of a chef:

- The **training data** is all the dishes they've tasted, the recipes they've studied, the kitchens they've visited
- The **parameters** are their accumulated skills and knowledge
- The **model** is the trained chef, ready to cook
- The **prompt** (which we'll cover later) is what you ask them to cook
- The **response** is the dish they serve you

A chef with more experience (more parameters) and better teachers (better data) will make better dishes. But even the best chef needs you to ask clearly for what you want.

## Key concepts today

- **Model:** The result of training — a file containing everything the machine has learned
- **Training:** The process of feeding a model data so it learns patterns
- **Parameters (7B, 70B, 405B):** The internal connections of the model. More parameters = more capability, more resources
- **Training data:** The material the model learns from. Quality is key
- **Open model:** You can download and run it on your own hardware
- **Closed model:** Only accessible via the company's API or website

---

*Next lesson: The AI you already use without knowing it — a tour of all the AI applications in your daily life.*
