---
title: "Lesson 19: An Agent's Memory — How It Remembers (and Forgets)"
date: 2026-04-24
slug: "lesson-19-agent-memory"
draft: false
tags: ["memory", "embeddings", "rag"]
categories: ["Agents"]
summary: "The types of agent memory, what embeddings are, how RAG works, and why memory is the hardest problem."
ShowToc: true
weight: 19
---

## The memory problem

Remember Lesson 8: an LLM doesn't remember anything between conversations. Each interaction starts from zero. But a useful agent needs to remember things: who you are, what you've discussed, your preferences, pending tasks.

Memory is what transforms a generic chatbot into a personal assistant that knows you. And it's arguably the hardest technical problem in current agents.

## Short-term memory: the context window

The most basic form of memory is the **context window**. Within a single conversation, the agent "remembers" everything said because the history is re-sent to the model with each request.

Limitations: finite size, growing cost with each message, disappears between conversations.

## Long-term memory: storing information outside the model

To remember between conversations, the agent needs an external system — a database to store relevant information and retrieve it when needed.

1. During a conversation, the agent detects important information
2. It saves it to a database
3. In future conversations, it queries the database
4. It injects that information into the prompt so the model "remembers"

## Embeddings: the key to semantic search

An **embedding** is a numerical representation of a text's meaning. It converts words and phrases into number vectors that capture their meaning.

Why is this useful? Because with embeddings you can do **semantic search** — searching by meaning, not by exact words.

Example: if the agent searches for "electric car" and the database contains the phrase "battery-powered vehicles", an exact word search would find nothing. But an embedding search would, because the vectors for "electric car" and "battery-powered vehicles" are close in semantic space.

## RAG: Retrieval Augmented Generation

**RAG** combines information retrieval with text generation:

1. The agent receives a question
2. Before answering, it searches for relevant information in its database (retrieval)
3. It adds the found information to the model's prompt (augmented)
4. The model generates the response taking into account the retrieved information (generation)

RAG is like giving the model a personalised "cheat sheet" for each question.

## Types of memory in practice

**Conversation memory:** History of the current conversation.

**Fact memory:** Extracts and stores concrete facts: "The user lives in Barcelona", "The user works in IT".

**Document memory:** Processes and indexes documents for future reference.

## Why it's the hardest problem

**What to store?** Not everything said is relevant. **When to forget?** Information expires. **How much to retrieve?** Too much fills the context window. **Privacy:** Memory contains sensitive information.

## Key concepts today

- **Short-term memory:** The current conversation's context window
- **Long-term memory:** External database storing information between conversations
- **Embeddings:** Numerical representation of text meaning — enables semantic search
- **Semantic search:** Searching by meaning, not exact words
- **RAG:** Retrieving relevant information and injecting it into the prompt before generating a response

---

*Next lesson: Agent frameworks — OpenClaw, LangChain, and others.*
