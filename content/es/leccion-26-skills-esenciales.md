---
title: "Lección 26: Skills esenciales — dar superpoderes a tu agente"
date: 2026-05-05
slug: "leccion-26-skills-esenciales"
draft: false
tags: ["openclaw", "skills", "configuracion"]
categories: ["OpenClaw"]
summary: "Las skills más útiles para empezar: búsqueda web, lectura de archivos, y fuentes de información en tiempo real."
ShowToc: true
weight: 26
---

## Semana 6: poner el agente a trabajar

Tienes un agente con cerebro (modelo), personalidad (system prompt), y canal de comunicación (Telegram). Ahora le damos superpoderes con skills.

## Instalar skills desde Clawhub

`openclaw skill install nombre-de-la-skill`

Las skills se instalan en `~/.openclaw/skills/` (globales) o `~/.openclaw/workspace/skills/` (por workspace).

## Las 5 skills esenciales

**1. Búsqueda web:** Tavily (requiere API key, tier gratis disponible), DuckDuckGo (gratis, sin API key), o SearXNG (autoalojado, privacidad total).

**2. Lectura de URLs (web fetch):** Abre una URL y extrae el contenido completo.

**3. Lectura de archivos:** Procesa documentos que le envíes por Telegram: PDFs, texto, hojas de cálculo.

**4. Reddit (readonly):** Buscar discusiones, leer comentarios. Muy útil para opiniones y experiencias.

**5. Hacker News:** Contenido técnico y de startups en tiempo real.

## Configurar skills

Cada skill puede requerir configuración adicional. Consulta la documentación de cada skill en Clawhub.

## Skills globales vs de workspace

**Globales:** Disponibles para todos los workspaces. **De workspace:** Solo para el workspace activo.

## Conceptos clave de hoy

- **Clawhub.ai:** Directorio de skills para OpenClaw
- **Skills esenciales:** Búsqueda web, lectura de URLs, lectura de archivos, Reddit, Hacker News
- **Skills globales vs workspace:** Globales para uso general, workspace para proyectos específicos

---

*Próxima lección: Automatizaciones — que el agente trabaje solo con cron jobs.*
