---
title: "Lección 28: Múltiples agentes — cuando uno no es suficiente"
date: 2026-05-07
slug: "leccion-28-multiples-agentes"
draft: false
tags: ["openclaw", "multi-agente", "arquitectura"]
categories: ["OpenClaw"]
summary: "Cuándo tiene sentido tener más de un agente, cómo organizarlos, y cómo combinar modelos caros y baratos inteligentemente."
ShowToc: true
weight: 28
---

## ¿Por qué más de un agente?

Cuando empiezas, un solo agente es suficiente. Pero a medida que le das más responsabilidades, llegas a un punto donde no es la mejor solución.

## Razones para separar agentes

**Especialización del modelo:** Diferentes tareas requieren diferentes modelos. Un briefing diario no necesita el modelo más potente. Una análisis complejo sí.

**Coste:** Separar por modelo te permite asignar el modelo caro solo a las tareas que lo necesitan.

**Disponibilidad:** Si un agente falla, los otros siguen funcionando.

**Organización:** Cada agente con su propio system prompt, skills y memoria.

## Ejemplo práctico: dos agentes coordinados

**Agente primario (calidad):** Claude Sonnet o GPT-4. Para conversación interactiva, decisiones importantes.

**Agente secundario (volumen):** Kimi K2.5 via NVIDIA NIM o LLaMA via Groq. Para tareas automáticas, briefings, traducciones. Coste casi cero.

## Workspaces en OpenClaw

OpenClaw soporta **workspaces** — entornos separados con configuración independiente. Cada workspace puede tener un modelo diferente, skills diferentes, y un system prompt diferente.

## Conceptos clave de hoy

- **Separar por coste:** Modelo caro para calidad, modelo barato para volumen
- **Separar por función:** Cada agente experto en su dominio
- **Workspaces:** Entornos separados dentro de OpenClaw
- **No complicarse:** Si un agente es suficiente, uno es mejor que dos

---

*Próxima lección: Seguridad y privacidad — tu agente en el mundo real.*
