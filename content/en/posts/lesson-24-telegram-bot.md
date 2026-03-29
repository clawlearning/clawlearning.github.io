---
title: "Lesson 24: Connecting OpenClaw to Telegram"
date: 2026-05-01
slug: "lesson-24-telegram-bot"
draft: false
tags: ["openclaw", "telegram", "bot", "tutorial"]
categories: ["OpenClaw"]
summary: "Create a Telegram bot, connect it to OpenClaw, and talk to your agent from your phone."
ShowToc: true
weight: 24
---

## The agent on your phone

So far you've interacted with OpenClaw from the terminal. Now we connect it to Telegram so you can talk to your agent from your phone.

## Step 1: Create the bot

1. Open Telegram and search for **@BotFather**
2. Send `/newbot`
3. Choose a name and username (must end in "bot")
4. BotFather will give you a **token** — copy it

## Step 2: Configure Telegram in OpenClaw

Add to `openclaw.json`:
```json
{
  "telegram": {
    "token": "BOTFATHER_TOKEN_HERE",
    "allowedUsers": ["YOUR_TELEGRAM_ID"]
  }
}
```

To get your Telegram ID, search for @userinfobot and send `/start`.

## Step 3: Start it up

`openclaw --telegram`

Find your bot on Telegram and send it a message. If it responds, congratulations — you have an AI agent on your phone.

## Basic commands

- `/new` — New conversation (clears context)
- `/help` — Available commands

## Keeping the bot active 24/7

**tmux:** `tmux new -s openclaw` → `openclaw --telegram` → Ctrl+B, D to detach.

**systemd:** Configure as a system service for automatic startup.

## Security

**Always configure `allowedUsers`.** An open bot is a bot anyone can exploit. **Don't share the token.**

## Key concepts today

- **@BotFather:** Telegram's official bot for creating bots
- **Token:** The access key that identifies your bot
- **allowedUsers:** List of authorised Telegram IDs
- **`/new`:** Clears context and starts a fresh conversation

---

*Next lesson: Giving your agent personality — the system prompt.*
