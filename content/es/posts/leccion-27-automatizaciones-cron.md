---
title: "Lección 27: Automatizaciones — que el agente trabaje solo"
date: 2026-05-06
slug: "leccion-27-automatizaciones-cron"
draft: false
tags: ["openclaw", "cron", "automatizacion"]
categories: ["OpenClaw"]
summary: "Configura tareas automáticas para que tu agente haga cosas sin que tú se lo pidas: briefings, alertas, monitorización."
ShowToc: true
weight: 27
---

## De agente reactivo a agente proactivo

Imagina que cada mañana a las 7 recibes un mensaje de Telegram con el resumen de noticias de tu sector. O que el agente revisa precios cada hora y te avisa cuando bajan. Todo automático.

Esto se hace con **cron jobs** — tareas programadas.

## Cron en OpenClaw

```json
{
  "cron": [
    {
      "schedule": "0 7 * * 1-5",
      "prompt": "Busca las 5 noticias más relevantes sobre IA de hoy. Haz un resumen breve en castellano.",
      "timezone": "Europe/Madrid"
    }
  ]
}
```

## Sintaxis cron

```
┌───── minuto (0-59)
│ ┌───── hora (0-23)
│ │ ┌───── día del mes (1-31)
│ │ │ ┌───── mes (1-12)
│ │ │ │ ┌───── día de la semana (0-7)
* * * * *
```

Ejemplos: `0 7 * * 1-5` (laborables a las 7:00), `0 */4 * * *` (cada 4 horas), `0 22 * * 5` (viernes a las 22:00).

## Ideas de automatizaciones

**Briefing matinal.** **Monitorización de precios.** **Resumen semanal.** **Vigilancia de competencia.**

## Controlar el consumo de tokens

**Limita la salida** en el prompt. **Frecuencia razonable.** **Modelo adecuado** (barato para tareas rutinarias). **Límite Telegram:** 4096 caracteres por mensaje.

## Conceptos clave de hoy

- **Cron job:** Tarea que se ejecuta automáticamente a horas programadas
- **Sintaxis cron:** 5 campos que definen la programación
- **Control de tokens:** Limita salida, elige modelo adecuado, monitoriza consumo

---

*Próxima lección: Múltiples agentes — cuando uno no es suficiente.*
