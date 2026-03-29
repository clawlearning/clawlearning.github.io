---
title: "Lesson 3: Types of AI — how we classify intelligent machines"
date: 2026-04-02
slug: "lesson-03-types-of-ai"
draft: false
tags: ["ai", "machine-learning", "classification"]
categories: ["Fundamentals"]
summary: "The different categories of AI explained practically: Machine Learning, Deep Learning, Generative AI and more."
ShowToc: true
weight: 3
---

## Why classify AI?

When someone says "AI", they could be talking about very different things. Your email's spam filter is AI. ChatGPT is AI. A self-driving car is AI. But they work in completely different ways.

Understanding the types of AI will help you know what people mean when they say "machine learning", "deep learning", or "generative AI" — terms that sound similar but mean very different things.

## The big umbrella: Artificial Intelligence

AI is the umbrella term that encompasses everything. Any system that performs tasks normally requiring human intelligence is AI. Within this umbrella, there are levels.

Think of it as concentric circles: AI is the big circle, inside it sits Machine Learning, and inside that sits Deep Learning. They're not different things — each is a subset of the one above.

## Machine Learning: learning from examples

**Machine Learning** (ML) is the branch of AI where the machine learns from examples instead of being programmed with rules.

In traditional programming, you tell the computer exactly what to do: "if the email contains the word 'viagra', it's spam". In Machine Learning, you give it thousands of emails labelled as "spam" or "not spam", and the machine learns to tell them apart on its own. It can discover patterns you never imagined.

There are three main types of learning:

**Supervised learning:** You give it data with the correct answers, and it learns to predict them. Example: you show it 10,000 labelled photos of cats and dogs, and it learns to tell them apart in new photos.

**Unsupervised learning:** You give it unlabelled data, and it finds patterns on its own. Example: you give it customer data and it discovers groups (high spenders, low spenders, night shoppers...) without you telling it what groups to look for.

**Reinforcement learning:** The machine learns by trial and error, receiving "rewards" when it gets things right and "penalties" when it gets things wrong. Example: a chess program plays millions of games against itself and learns which strategies work.

## Deep Learning: deep neural networks

**Deep Learning** is a subset of Machine Learning that uses **artificial neural networks** — structures inspired (very loosely) by the human brain.

A neural network is a chain of layers of "neurons" that process information. Each layer detects patterns at a different level. In image recognition, for example, the first layer detects lines, the second shapes, the third objects, the fourth complete scenes.

"Deep" means the network has many layers. Networks from the 90s had 2-3 layers. Today's can have hundreds. More layers = ability to detect more complex patterns, but also requires more data and computing power.

Everything driving the current boom — speech recognition, text generation, translation, image generation — is Deep Learning.

## Generative AI: creating new things

**Generative AI** is the branch that has caused the current explosion. These are models trained to **create new content**: text, images, audio, video, code.

Unlike an AI that classifies (spam or not spam) or predicts (what will the price be tomorrow), generative AI **produces things that didn't exist before**. It writes texts, paints images, composes music.

The best-known examples:

- **Text generation:** GPT, Claude, Gemini, LLaMA
- **Image generation:** DALL-E, Midjourney, Stable Diffusion
- **Code generation:** GitHub Copilot, Claude, Cursor
- **Video generation:** Sora, Runway
- **Voice generation:** ElevenLabs

When we use ChatGPT or Claude, we're using generative text AI. The tool doesn't search the internet for information (unless web search is enabled) — it **generates** new text word by word.

## Where do the tools you know fit in?

**ChatGPT, Claude, Gemini:** Generative text AI, built with Deep Learning, specifically with the Transformer architecture. They belong to the LLM (Large Language Models) family, which we'll cover in detail in week 2.

**Google Maps (routing):** Supervised Machine Learning. Trained on real traffic data to predict arrival times.

**Spotify (recommendations):** Unsupervised + supervised Machine Learning. Groups users with similar tastes and predicts what you'll like.

**Spam filter:** Supervised Machine Learning. Trained on millions of labelled emails.

**Tesla Autopilot:** Deep Learning with computer vision + reinforcement learning.

## Not everything that says "AI" is AI

An important warning: the term "AI" has become a marketing buzzword. You'll see products claiming to use "AI" that really do very simple things — sometimes just hard-coded rules with no actual machine learning.

If a company says their product "uses AI", ask yourself: does it learn from data? Or does it just follow fixed rules? If it's the latter, it's traditional programming with a modern label.

## Key concepts today

- **Machine Learning:** The machine learns from examples instead of being programmed with rules
- **Deep Learning:** Machine Learning with neural networks of many layers
- **Generative AI:** Models that create new content (text, images, code, video)
- **Supervised learning:** Learning from labelled data (questions with correct answers)
- **Unsupervised learning:** Finding patterns in unlabelled data
- **Reinforcement learning:** Learning by trial and error with rewards

---

*Next lesson: What is an AI model? — no maths, we promise.*
