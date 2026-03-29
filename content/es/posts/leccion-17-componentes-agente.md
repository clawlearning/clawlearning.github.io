---
title: "Lección 17: Anatomía de un agente — las piezas del rompecabezas"
date: 2026-04-22
slug: "leccion-17-componentes-agente"
draft: false
tags: ["agente", "componentes", "arquitectura"]
categories: ["Agentes"]
summary: "Los componentes de un agente de IA: cerebro, herramientas, memoria, sentidos y manos. Cómo encajan para crear un agente funcional."
ShowToc: true
weight: 17
---

## Las piezas del agente

Un agente de IA no es una sola cosa — es un conjunto de componentes que trabajan juntos. Entender cada pieza te ayudará a configurar tu agente con criterio.

## El cerebro: el modelo LLM

El corazón de cualquier agente es un LLM. Es lo que "piensa": interpreta tus instrucciones, decide qué herramientas usar, genera las respuestas, y coordina todo el proceso.

La primera decisión al configurar un agente es qué modelo ponerle como cerebro. Un modelo potente (Claude Sonnet, GPT-4) dará respuestas más inteligentes pero costará más. Un modelo pequeño (LLaMA 8B, Phi) será más barato y rápido pero menos capaz.

El cerebro determina el "techo" del agente: por muy buena que sea el resto de la configuración, el agente no puede ser más inteligente que el modelo que lo mueve.

## Las manos: las herramientas (tools/skills)

Si el cerebro piensa, las manos actúan. Las **herramientas** son las capacidades concretas que das al agente para hacer cosas en el mundo real.

Sin herramientas, un agente es un chatbot. Con herramientas, puede: buscar en la web, leer archivos, enviar mensajes, acceder a servicios como Google Calendar o Slack, ejecutar código, generar imágenes.

El agente decide qué herramienta usar basándose en la tarea. Esto es una capacidad emergente de los LLM modernos: aprenden a seleccionar la herramienta correcta por el contexto de la petición.

## La memoria: recordar y aprender

**Memoria a corto plazo (context window):** Lo que el agente "recuerda" dentro de una misma conversación. Limitada por el tamaño del context window.

**Memoria a largo plazo (persistente):** Información guardada fuera del modelo, en una base de datos. El agente puede consultarla para recuperar información de interacciones anteriores. Normalmente usa técnicas como embeddings y búsqueda semántica.

La memoria a largo plazo es lo que hace que un agente "te conozca": sabe tu nombre, tus preferencias, el contexto de tu trabajo.

## Los sentidos: por dónde entra la información

**Telegram:** El canal más común para agentes personales. **Email.** **Web.** **Archivos.** **Cron (tiempo):** Puede activarse automáticamente a horas programadas.

## El sistema nervioso: el framework

El **framework** es el software que conecta todas las piezas. Coge tu mensaje, lo pasa al modelo junto con las instrucciones y el historial, recibe la respuesta, detecta si el modelo quiere usar alguna herramienta, la ejecuta, y devuelve el resultado.

## Cómo encaja todo

Ejemplo: le dices a tu agente por Telegram: "¿Cuáles son las últimas noticias sobre IA en España?"

1. **Telegram** recibe tu mensaje y lo pasa a **OpenClaw**
2. OpenClaw construye el prompt con tu mensaje + system prompt + historial
3. El prompt se envía al **modelo** vía la API del provider
4. El modelo decide que necesita información actual y pide usar la herramienta de **búsqueda web**
5. OpenClaw ejecuta la búsqueda y le devuelve los resultados
6. El modelo procesa los resultados y genera un resumen
7. La respuesta te llega por **Telegram**

Todo esto ocurre en segundos, de forma automática.

## Conceptos clave de hoy

- **Cerebro (LLM):** El modelo que piensa, razona y decide
- **Manos (tools/skills):** Las herramientas que permiten al agente actuar en el mundo real
- **Memoria:** Corto plazo (context window) + largo plazo (base de datos persistente)
- **Sentidos (inputs):** Telegram, email, web, archivos, cron
- **Sistema nervioso (framework):** El software que conecta todas las piezas (OpenClaw)

---

*Próxima lección: Tools y Skills — las manos del agente en detalle.*
