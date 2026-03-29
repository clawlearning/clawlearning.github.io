---
title: "Lesson 10: Your First Prompt — How to Talk to an LLM"
date: 2026-04-11
slug: "lesson-10-prompt-basics"
draft: false
tags: ["prompts", "prompt-engineering", "llm"]
categories: ["LLM"]
summary: "Learn to write effective prompts and understand why the result depends on how you ask."
ShowToc: true
weight: 10
---

## The prompt: your most powerful tool

Of everything you'll learn in this course, the ability to write good prompts is probably the most useful day to day. A good prompt can be the difference between a useless response and a brilliant one — with the **same model**.

A **prompt** is simply the text you send to the model. Your question, your instructions, the context you provide. Everything you type in a chatbot's text box is a prompt.

## Why does it matter how you ask?

Remember from Lesson 6: an LLM generates text by predicting the most probable word given the input. If the input is vague, the output will be vague. If the input is specific and clear, the output will be much better.

Let's compare two prompts for the same task:

**Bad prompt:** "Explain AI to me"

Too broad. The model doesn't know what level to explain at, how long it should be, or which aspect of AI you're interested in.

**Good prompt:** "Explain what artificial intelligence is in 3 short paragraphs. The audience is an adult with no technical background. Use everyday examples like smartphones or Netflix."

Now the model knows exactly what you want: length, level, and style.

## The four pieces of a good prompt

### 1. Role

Tell the model who it is or what role to adopt.

"You are a computer science teacher who explains concepts to people with no technical background."

### 2. Context

Give it the information it needs to respond well.

"I'm preparing a presentation for my company's directors. They have no technical background but they make budget decisions."

### 3. Instruction

Tell it exactly what you want it to do.

"Write me 5 key points about why we should invest in AI, with a concrete example for each point."

### 4. Output format

Tell it how you want the response.

"Respond as a numbered list. Each point should have a bold title followed by a 2-3 line explanation."

## Practical examples

**Task: Write an email**

Basic prompt: "Write an email to my boss about holidays"

Improved prompt: "Write a short, professional email to my boss, Jordi, asking for 3 days off the week of June 15th. The tone should be friendly but direct. Mention that I'll leave pending tasks organised."

**Task: Understand a concept**

Basic prompt: "What is blockchain?"

Improved prompt: "Explain what blockchain is as if you were explaining it to someone who can use a computer but can't program. Use an everyday analogy. Maximum 200 words."

## Common mistakes

**Being too vague:** "Help me with my project" — What project? What help?

**Doing too many things at once:** Better to go step by step.

**Assuming it knows everything:** "Do what I told you yesterday" — The model doesn't remember previous conversations.

**Not specifying the format:** If you don't say how you want the response, the model will choose for itself.

## Prompt engineering: no programming required

The term **prompt engineering** sounds very technical, but it simply means "the art of writing good prompts". It's not programming — it's clear, precise communication.

Some useful techniques:

**Few-shot prompting:** Give it examples of what you want. "Convert these titles into URL slugs. Example: 'What is AI?' → 'what-is-ai'. Now do it for: 'How does an LLM work?'"

**Chain of thought:** Ask it to reason step by step. "Before giving the final answer, explain your reasoning step by step."

**Iteration:** Don't expect the first prompt to be perfect. Try it, look at the result, and adjust.

## The prompt is the interface

Think of the prompt as the **interface** between you and the model. An excellent model with a bad prompt will give a mediocre result. A decent model with an excellent prompt can give a surprisingly good result.

When you configure your agent with OpenClaw, the **system prompt** will be the most important piece of the entire configuration. Investing time in it is well worth it.

## Key concepts today

- **Prompt:** The text you send to the model — question, instructions, context
- **The 4 pieces:** Role + Context + Instruction + Output format
- **Prompt engineering:** The art of writing effective prompts (no programming required)
- **Few-shot:** Giving the model examples so it understands the desired format
- **Chain of thought:** Asking the model to reason step by step to improve accuracy
- **Iteration:** Adjusting the prompt based on results until you get what you want

---

*Next lesson: We start Week 3 — What is a provider? Who gives you access to models.*
