---
title: "Lección 25: Dar personalidad a tu agente — el system prompt"
date: 2026-05-02
slug: "leccion-25-personalidad-system-prompt"
draft: false
tags: ["openclaw", "system-prompt", "personalidad"]
categories: ["OpenClaw"]
summary: "Escribe un system prompt efectivo que defina cómo se comporta, habla y piensa tu agente."
ShowToc: true
weight: 25
---

## El system prompt: el ADN de tu agente

Si el modelo es el cerebro y las herramientas son las manos, el **system prompt** es la **personalidad**. Define cómo se comporta el agente: en qué idioma habla, qué tono usa, qué reglas sigue, qué sabe sobre ti.

Dos agentes con el mismo modelo y herramientas pueden ser completamente diferentes si tienen system prompts diferentes.

## Dónde se configura

En OpenClaw, el system prompt es un archivo Markdown en `~/.openclaw/workspace/system-prompt.md`.

## Estructura de un buen system prompt

### 1. Identidad

"Eres un asistente personal especializado en tecnología. Te llamas Atlas. Eres directo y práctico."

### 2. Comportamiento

"Responde siempre en castellano, con términos técnicos en inglés. Sé conciso."

### 3. Contexto

"El usuario es un profesional de IT con experiencia en Linux y Docker."

### 4. Límites

"No des consejos médicos ni legales. Si una petición es ambigua, pide aclaración."

## Consejos

**Sé específico.** "Sé amable" es vago. "Responde con un tono cercano, como si hablaras con un compañero de trabajo" es concreto.

**Itera.** El primer system prompt no será perfecto. Úsalo unos días, identifica lo que no te gusta, y ajusta.

**No lo llenes demasiado.** Un system prompt de 3000 palabras consume tokens en cada mensaje.

**El idioma importa.** Escríbelo en el idioma en que quieres las respuestas.

## Conceptos clave de hoy

- **System prompt:** Instrucciones permanentes que definen personalidad y comportamiento
- **`~/.openclaw/workspace/system-prompt.md`:** Donde vive el system prompt en OpenClaw
- **Cuatro partes:** Identidad + Comportamiento + Contexto + Límites
- **Iterar:** Se mejora con el uso

---

*Próxima lección: Empezamos la Semana 6 — Skills esenciales para tu agente.*
