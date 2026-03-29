---
title: "Lección 20: Frameworks de agentes — OpenClaw, LangChain y otros"
date: 2026-04-25
slug: "leccion-20-frameworks-agentes"
draft: false
tags: ["frameworks", "openclaw", "langchain"]
categories: ["Agentes"]
summary: "Las opciones para montar un agente: desde las más simples hasta las más complejas. Cuál elegir según tu nivel."
ShowToc: true
weight: 20
---

## ¿Qué es un framework de agentes?

Un framework es el "kit de montaje" del agente. Proporciona la estructura que conecta el modelo, las herramientas, la memoria y la interfaz sin que tú tengas que programarlo desde cero.

## OpenClaw: simplicidad para todos

**OpenClaw** es un framework de código abierto diseñado para ser simple y directo. Instalación rápida (un solo paquete npm), configuración por archivo JSON, soporte nativo para Telegram, skills instalables desde Clawhub, y memoria con embeddings locales.

**Ideal para:** Usuarios que quieren un agente personal funcional sin complicarse. Sysadmins, entusiastas de la tecnología.

## LangChain: la navaja suiza

**LangChain** es probablemente el framework más conocido. Ecosistema enorme, documentación extensa, soporta flujos de agente complejos. Pero la curva de aprendizaje es pronunciada y requiere saber programar en Python o JavaScript.

**Ideal para:** Desarrolladores que necesitan control total.

## CrewAI: agentes que colaboran

**CrewAI** se centra en **sistemas multi-agente**: varios agentes trabajando juntos, cada uno con un rol específico. Por ejemplo, un agente investigador, un escritor, y un editor coordinándose.

**Ideal para:** Flujos de trabajo complejos con división de tareas.

## AutoGen (Microsoft): conversaciones entre agentes

**AutoGen** es el framework de Microsoft donde los agentes se comunican entre ellos en forma de conversación — uno propone, otro revisa, un tercero ejecuta.

## ¿Cómo elegir?

**Si no sabes programar** y quieres un agente personal → **OpenClaw**.

**Si sabes Python** y quieres más control → **LangChain** o **Pydantic AI**.

**Si necesitas múltiples agentes coordinados** → **CrewAI** o **AutoGen**.

**Si eres una empresa** → **LangChain** o **Semantic Kernel**.

Para este curso, trabajaremos con **OpenClaw** porque es el que mejor se adapta a alguien que empieza.

## Todos comparten los mismos fundamentos

Independientemente del framework que elijas, todos funcionan con los mismos principios que has aprendido: usan un LLM como cerebro, se conectan a providers vía API, dan herramientas al modelo, y gestionan memoria.

Si entiendes los fundamentos, cambiar de framework es cuestión de adaptarse a su configuración.

## Conceptos clave de hoy

- **Framework:** Kit de montaje que conecta modelo + herramientas + memoria + interfaz
- **OpenClaw:** Simple, configurable, ideal para no-programadores
- **LangChain:** Potente, versátil, requiere programación
- **CrewAI / AutoGen:** Multi-agente, para flujos complejos
- **Todos usan los mismos fundamentos:** LLM + Provider + Tools + Memoria

---

*Próxima lección: Empezamos la Semana 5 — Qué es OpenClaw y por qué lo hemos elegido.*
