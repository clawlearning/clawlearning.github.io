---
title: "Lección 9: El mapa de los LLM — quién es quién en 2026"
date: 2026-04-10
slug: "leccion-09-modelos-actuales"
draft: false
tags: ["modelos", "comparativa", "llm"]
categories: ["LLM"]
summary: "Conoce los principales modelos del momento, las empresas detrás, y las diferencias clave para elegir el que te conviene."
ShowToc: true
weight: 9
---

## ¿Por qué conocer el mapa?

Cuando empieces a configurar tu propio agente, una de las primeras decisiones será: ¿qué modelo uso? Hay decenas de modelos disponibles y cada semana salen nuevos. Tener un mapa mental claro te ayudará a elegir con criterio en lugar de elegir a ciegas.

## Los grandes: empresas y modelos

### OpenAI — El pionero comercial

OpenAI lanzó ChatGPT y encendió la revolución. Sus modelos de la familia **GPT** son los más conocidos del mercado. Se centra en ser el más potente y el primero en nuevas capacidades. Tiene la base de usuarios más grande y el ecosistema de desarrolladores más maduro. Como contrapartida, es uno de los providers más caros y sus modelos son completamente cerrados.

### Anthropic — Seguridad y utilidad

Anthropic, fundada por antiguos miembros de OpenAI, crea la familia de modelos **Claude**. Su filosofía es construir IA potente pero segura — con mucho énfasis en seguir instrucciones correctamente, ser honesto sobre las limitaciones, y evitar contenido dañino.

Claude destaca especialmente en tareas que requieren instrucciones complejas, escritura de calidad, y análisis de documentos largos (con un context window de 200K tokens).

### Google — El ecosistema integrado

Google compite con la familia **Gemini**. Su ventaja es la integración con su ecosistema: Gmail, Google Docs, Google Search, Android. Google también fue pionero en la investigación que hizo posibles los LLM — el paper de los Transformers salió de Google.

### Meta — El líder open source

Meta ha publicado sus modelos **LLaMA** como open source. Cualquier persona o empresa puede descargarlos, usarlos y modificarlos. Esta estrategia ha acelerado enormemente la innovación.

### Mistral — La alternativa europea

Mistral es una empresa francesa que ha demostrado que se pueden hacer modelos competitivos desde Europa. Sus modelos destacan por su eficiencia.

### Modelos chinos

**DeepSeek** sacudió el mercado con modelos que rivalizaban con los mejores occidentales. **Qwen** (Alibaba) y **Kimi** (Moonshot AI) ofrecen modelos potentes, muchos open source.

## Modelos abiertos que puedes ejecutar tú

Si quieres ejecutar un modelo en tu ordenador (con Ollama, que veremos en la Semana 3):

**LLaMA (Meta):** La referencia. Modelos de 8B a 405B parámetros.

**Mistral / Mixtral:** Modelos eficientes con muy buen rendimiento para su tamaño.

**Qwen (Alibaba):** Buenos modelos multilingües. Especialmente competentes en idiomas no-ingleses.

**Gemma (Google):** Modelos pequeños y eficientes publicados como open source.

**Phi (Microsoft):** Modelos pequeños (3-4B) sorprendentemente capaces.

## ¿Cómo elegir un modelo?

La elección depende de cuatro factores:

**1. Tarea:** Para conversación general y razonamiento complejo, los modelos grandes son superiores. Para tareas específicas y repetitivas, un modelo pequeño puede ser suficiente.

**2. Presupuesto:** Los modelos comerciales cobran por token. Los modelos abiertos locales tienen coste cero por uso, pero necesitas hardware.

**3. Privacidad:** Si tus datos son sensibles, un modelo local garantiza que nada sale de tu ordenador.

**4. Calidad vs velocidad:** Los modelos grandes son más precisos pero más lentos. Los pequeños son más rápidos y baratos, pero pueden cometer más errores.

No hay un "mejor modelo" universal — hay el mejor modelo **para tu caso de uso**.

## Los rankings: dónde comparar

**Chatbot Arena** (lmsys.org): Ranking basado en votaciones humanas. El más fiable.

**Artificial Analysis** (artificialanalysis.ai): Compara modelos en velocidad, precio y calidad.

**Open LLM Leaderboard** (Hugging Face): Ranking de modelos abiertos.

## El paisaje cambia rápido

Un aviso importante: este mapa caduca rápido. Cada pocos meses aparecen modelos nuevos que cambian el equilibrio. Por eso es más importante entender los **criterios** de elección que memorizar nombres de modelos.

## Conceptos clave de hoy

- **Modelos cerrados (GPT, Claude, Gemini):** Más potentes, acceso vía API, pago por token
- **Modelos abiertos (LLaMA, Mistral, Qwen):** Descargables, ejecutables localmente, coste cero por uso
- **Chatbot Arena:** Ranking de modelos basado en votaciones humanas
- **No hay "mejor modelo":** Hay el mejor modelo para tu caso de uso, presupuesto y necesidades

---

*Próxima lección: Tu primer prompt — cómo hablar con un LLM.*
