---
title: "Lección 24: Conectar OpenClaw a Telegram"
date: 2026-05-01
slug: "leccion-24-telegram-bot"
draft: false
tags: ["openclaw", "telegram", "bot", "tutorial"]
categories: ["OpenClaw"]
summary: "Crea un bot de Telegram, conéctalo a OpenClaw, y habla con tu agente desde el móvil."
ShowToc: true
weight: 24
---

## El agente en tu móvil

Hasta ahora has interactuado con OpenClaw desde el terminal. Ahora lo conectamos a Telegram para hablar con el agente desde el móvil.

## Paso 1: Crear el bot

1. Abre Telegram y busca **@BotFather**
2. Envíale `/newbot`
3. Pon un nombre y un username (debe terminar en "bot")
4. BotFather te dará un **token** — cópialo

## Paso 2: Configurar Telegram en OpenClaw

Añade al `openclaw.json`:
```json
{
  "telegram": {
    "token": "EL_TOKEN_DEL_BOTFATHER",
    "allowedUsers": ["TU_TELEGRAM_ID"]
  }
}
```

Para obtener tu Telegram ID, busca @userinfobot y envíale `/start`.

## Paso 3: Arrancar

`openclaw --telegram`

Busca tu bot en Telegram y envíale un mensaje. Si responde, felicidades — tienes un agente de IA en el móvil.

## Comandos básicos

- `/new` — Nueva conversación (limpia el contexto)
- `/help` — Comandos disponibles

## Mantener el bot activo 24/7

**tmux:** `tmux new -s openclaw` → `openclaw --telegram` → Ctrl+B, D para desconectar.

**systemd:** Configurar como servicio del sistema para que arranque automáticamente.

## Seguridad

**Configura `allowedUsers` siempre.** Un bot abierto es un bot que cualquiera puede explotar. **No compartas el token.**

## Conceptos clave de hoy

- **@BotFather:** Bot oficial de Telegram para crear bots
- **Token:** La clave de acceso que identifica tu bot
- **allowedUsers:** Lista de IDs autorizados
- **`/new`:** Limpia el contexto y empieza una conversación nueva

---

*Próxima lección: Dar personalidad a tu agente — el system prompt.*
