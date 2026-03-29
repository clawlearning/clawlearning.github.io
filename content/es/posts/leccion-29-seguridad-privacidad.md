---
title: "Lección 29: Seguridad y privacidad — tu agente en el mundo real"
date: 2026-05-08
slug: "leccion-29-seguridad-privacidad"
draft: false
tags: ["seguridad", "privacidad", "buenas-practicas"]
categories: ["OpenClaw"]
summary: "Buenas prácticas de seguridad para no exponer datos ni API keys, y cómo proteger tu agente."
ShowToc: true
weight: 29
---

## ¿Por qué hablar de seguridad?

Cuando tienes un agente funcionando, hay datos sensibles en juego: tus API keys (que cuestan dinero), tus conversaciones (con información personal), y los datos que el agente procesa.

## Regla 1: Protege las API keys

**Nunca en código que subas a GitHub.** **Usa variables de entorno.** **Revócalas si sospechas.** **Una key por servicio.**

## Regla 2: Restringe el acceso al bot de Telegram

**Configura `allowedUsers` siempre.** **No compartas el token del bot.**

## Regla 3: Entiende qué envías al provider

Todo el texto de tu conversación pasa por los servidores del provider. Para información sensible: **modelo local** con Ollama, o revisa las políticas del provider.

## Regla 4: Copias de seguridad

**Haz backup de `~/.openclaw/` regularmente.** Guarda los backups en lugar seguro (contiene API keys).

## Regla 5: Actualiza regularmente

`npm update -g openclaw`

## Regla 6: Monitoriza el uso

Revisa el consumo de tokens, los logs de OpenClaw, y las conversaciones.

## Resumen de buenas prácticas

1. API keys en variables de entorno, nunca en código
2. `allowedUsers` siempre configurado
3. Modelo local para datos sensibles
4. Backups regulares de `~/.openclaw/`
5. Actualizar OpenClaw periódicamente
6. Monitorizar consumo de tokens

## Conceptos clave de hoy

- **API keys:** La pieza más crítica — protegerlas es la prioridad número uno
- **allowedUsers:** Restricción de acceso al bot de Telegram
- **Modelo local:** La solución más segura para datos sensibles
- **Backups:** Tu configuración vale horas de trabajo

---

*Próxima lección: ¿Y ahora qué? — Siguientes pasos para seguir aprendiendo.*
