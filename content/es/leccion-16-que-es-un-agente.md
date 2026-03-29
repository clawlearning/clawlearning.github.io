---
title: "Lección 16: ¿Qué es un agente de IA? Más que un chatbot"
date: 2026-04-21
slug: "leccion-16-que-es-un-agente"
draft: false
tags: ["agente", "automatizacion", "basics"]
categories: ["Agentes"]
summary: "Definimos agente de IA, lo diferenciamos de un chatbot, y entendemos por qué es un salto cualitativo."
ShowToc: true
weight: 16
---

## Semana 4: el salto de los agentes

Hasta ahora has aprendido cómo funciona la IA, los LLM, y cómo acceder a ellos. Todo eso es teoría esencial, pero estática: tú preguntas, el modelo responde. Un ping-pong de texto.

Un **agente** cambia las reglas del juego. Un agente no espera a que le hables — puede actuar por sí solo. No se limita a generar texto — puede ejecutar acciones reales: buscar información, enviar mensajes, leer archivos, interactuar con servicios externos.

## Chatbot vs Agente

La diferencia es fundamental:

Un **chatbot** es reactivo. Tú le hablas, él responde. Si no le dices nada, no hace nada. ChatGPT en el navegador es un chatbot.

Un **agente** es proactivo. Puede recibir una instrucción compleja y descomponerla en pasos. Puede decidir qué herramientas usar. Puede ejecutar acciones sin que tú intervengas en cada paso. Puede funcionar en segundo plano mientras tú haces otras cosas.

Ejemplo concreto:

**Chatbot:** "¿Qué tiempo hace en Barcelona?" → "Ahora mismo hace 18°C con cielo parcialmente nublado."

**Agente:** "Cada mañana a las 7, dime el tiempo que hará hoy y si debo coger paraguas." → El agente configura un recordatorio, cada día a las 7 consulta una API meteorológica, interpreta los datos, y te envía un mensaje al Telegram con la recomendación. Todo solo, cada día, sin que tú hagas nada.

La diferencia no es el modelo — puede ser el mismo LLM. La diferencia es la **capa de ejecución**: el agente tiene acceso a herramientas (tools) que le permiten hacer cosas en el mundo real.

## ¿Qué hace un agente, en concreto?

Un agente de IA puede hacer cualquier cosa para la que tenga herramientas configuradas:

**Buscar información en internet** en tiempo real. **Leer y procesar archivos.** **Enviar mensajes.** **Monitorizar cosas** periódicamente. **Generar y publicar contenido** automáticamente. De hecho, esta web que estás leyendo funciona exactamente así. **Interactuar con servicios externos** a través de protocolos como MCP.

## ¿Por qué no es peligroso?

Un agente de IA actual no toma decisiones por sí solo sobre cosas importantes — hace lo que tú le has configurado. No puede hacer nada para lo que no tenga herramientas específicas. Si no le das acceso a tu email, no puede enviar emails.

Piensa en un agente como un asistente personal muy obediente: hará exactamente lo que le digas, con las herramientas que le des, y nada más.

## La explosión de los agentes en 2025-2026

Tres cosas han convergido: **Modelos suficientemente buenos** para entender instrucciones complejas. **Protocolos estándar (MCP)** para conectar agentes a cualquier servicio. **Frameworks accesibles** como OpenClaw que permiten montar un agente en minutos.

## Conceptos clave de hoy

- **Chatbot:** Responde preguntas de forma reactiva
- **Agente:** Ejecuta tareas de forma proactiva. Puede actuar solo, usar herramientas, e interactuar con servicios
- **Tools (herramientas):** Capacidades que se dan al agente (búsqueda web, enviar mensajes, leer archivos)
- **MCP:** Model Context Protocol — estándar para conectar agentes a servicios externos
- **Un agente no es autónomo** — hace lo que le configuras, con las herramientas que le das

---

*Próxima lección: Anatomía de un agente — las piezas del rompecabezas.*
