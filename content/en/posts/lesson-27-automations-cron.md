---
title: "Lesson 27: Automations — Letting the Agent Work on Its Own"
date: 2026-05-06
slug: "lesson-27-automations-cron"
draft: false
tags: ["openclaw", "cron", "automation"]
categories: ["OpenClaw"]
summary: "Set up automatic tasks so your agent does things without you asking: briefings, alerts, monitoring."
ShowToc: true
weight: 27
---

## From reactive to proactive agent

Imagine every morning at 7 you receive a Telegram message with a summary of news from your industry. Or the agent checks prices every hour and alerts you when they drop. All automatic.

This is done with **cron jobs** — scheduled tasks.

## Cron in OpenClaw

```json
{
  "cron": [
    {
      "schedule": "0 7 * * 1-5",
      "prompt": "Find the 5 most relevant AI news stories today. Write a brief summary of each in English.",
      "timezone": "Europe/London"
    }
  ]
}
```

## Cron syntax

```
┌───── minute (0-59)
│ ┌───── hour (0-23)
│ │ ┌───── day of month (1-31)
│ │ │ ┌───── month (1-12)
│ │ │ │ ┌───── day of week (0-7)
* * * * *
```

Examples: `0 7 * * 1-5` (weekdays at 7:00), `0 */4 * * *` (every 4 hours), `0 22 * * 5` (Fridays at 22:00).

## Automation ideas

**Morning briefing.** **Price monitoring.** **Weekly summary.** **Competitor watch.**

## Controlling token consumption

**Limit output** in the prompt. **Reasonable frequency.** **Right model** (cheap for routine tasks). **Telegram limit:** 4,096 characters per message.

## Key concepts today

- **Cron job:** A task that runs automatically at scheduled times
- **Cron syntax:** 5 fields defining the schedule
- **Token control:** Limit output, choose the right model, monitor consumption

---

*Next lesson: Multiple agents — when one isn't enough.*
