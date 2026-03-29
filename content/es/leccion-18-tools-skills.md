---
title: "Lección 18: Tools y Skills — las manos del agente"
date: 2026-04-23
slug: "leccion-18-tools-skills"
draft: false
tags: ["tools", "skills", "mcp"]
categories: ["Agentes"]
summary: "Qué son las tools y skills, por qué son esenciales, cómo decide un agente cuál usar, y qué es el MCP."
ShowToc: true
weight: 18
---

## Por qué las herramientas lo cambian todo

Imagina que tienes un asistente muy inteligente encerrado en una habitación sin teléfono, sin ordenador, sin nada. Puede pensar brillantemente, pero no puede hacer nada. Le pides "búscame vuelos baratos a Lisboa" y te dice "buena idea, pero no tengo acceso a internet".

Esto es un LLM sin herramientas. Inteligente pero inútil para tareas prácticas. Las herramientas son el teléfono y el ordenador del agente.

## ¿Qué es una tool?

Una **tool** (herramienta) es una función específica que el agente puede ejecutar. Técnicamente, es un trozo de código que hace algo concreto y que el modelo puede "llamar" cuando lo necesita.

Ejemplos comunes: **Búsqueda web.** **Leer URLs.** **Enviar mensajes de Telegram.** **Leer/escribir archivos.** **Ejecutar comandos.**

## ¿Qué es una skill?

En el contexto de OpenClaw, una **skill** es el nombre que se da a un paquete de herramientas relacionadas. Por ejemplo, una skill de "Reddit" podría incluir: buscar posts, leer comentarios, obtener posts populares.

## ¿Cómo decide el agente qué herramienta usar?

Esta es una de las capacidades más impresionantes de los LLM modernos. El modelo no sigue reglas rígidas — **razona** sobre qué herramienta necesita.

Le envías: "¿Qué noticias hay hoy sobre IA?" → El modelo "piensa": necesito información actual, tengo una herramienta de búsqueda web, la usaré. Y hace la búsqueda.

Incluso puede encadenar herramientas: buscar información, guardarla en un archivo, y enviarte un mensaje para avisarte.

## MCP: el estándar que lo conecta todo

**MCP** (Model Context Protocol) es un estándar creado por Anthropic que define cómo los agentes se conectan a servicios externos.

Antes del MCP, cada integración era un proyecto a medida. El MCP estandariza la comunicación. Un servicio que implemente MCP se puede conectar a cualquier agente que soporte MCP — sin código a medida. Piensa en el MCP como el USB de las herramientas de IA: un conector universal.

Hoy ya hay servidores MCP para cientos de servicios: Google Calendar, Gmail, Slack, GitHub, bases de datos, y muchos más.

## Dónde encontrar herramientas

**Clawhub.ai:** El directorio de skills para OpenClaw. **Servidores MCP de la comunidad.** **Skills propias** si tienes conocimientos técnicos.

## Precauciones

**Principio del mínimo privilegio:** Dale al agente solo las herramientas que realmente necesita.

**Revisa lo que hace:** Especialmente al principio, monitoriza cómo usa las herramientas.

**Herramientas sensibles:** Herramientas que envían emails o publican contenido pueden causar problemas si el agente las usa mal.

## Conceptos clave de hoy

- **Tool:** Función específica que el agente puede ejecutar
- **Skill:** Paquete de herramientas relacionadas (terminología OpenClaw)
- **MCP (Model Context Protocol):** Estándar de conexión entre agentes y servicios externos
- **El agente decide qué herramienta usar** — no sigue reglas rígidas, razona sobre la mejor opción
- **Principio del mínimo privilegio:** Dale solo las herramientas que necesita

---

*Próxima lección: La memoria de un agente — cómo recuerda (y olvida).*
