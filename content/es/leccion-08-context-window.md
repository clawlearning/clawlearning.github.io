---
title: "Lección 8: La ventana de contexto — la memoria a corto plazo de un LLM"
date: 2026-04-09
slug: "leccion-08-ventana-de-contexto"
draft: false
tags: ["context-window", "memoria", "llm"]
categories: ["LLM"]
summary: "Qué es el context window, por qué tiene límite, qué pasa cuando lo superas, y por qué un LLM no recuerda las conversaciones anteriores."
ShowToc: true
weight: 8
---

## ¿Qué es la ventana de contexto?

La **ventana de contexto** (context window) es la cantidad total de texto que un LLM puede procesar de una sola vez. Incluye tanto lo que tú le envías (entrada) como lo que él genera (salida).

Piensa en la ventana de contexto como la "memoria de trabajo" del modelo — el equivalente a tu memoria a corto plazo cuando lees un texto. Puedes tener en mente unas cuantas páginas de contenido. Si el texto es muy largo, las primeras páginas se van desdibujando mientras avanzas.

Un LLM funciona igual: todo lo que cabe dentro de la ventana de contexto, lo puede "ver" y usar. Lo que no cabe, no existe para él.

## ¿Cuánto cabe?

La ventana de contexto varía mucho entre modelos:

Los primeros modelos comerciales (GPT-3, 2020) tenían ventanas de **4.096 tokens** — unas 3.000 palabras, poco más que un artículo corto.

Hoy los modelos punteros ofrecen ventanas mucho más grandes. Claude puede trabajar con **200.000 tokens** (unas 150.000 palabras, el equivalente a un libro entero). GPT-4 llega a 128.000 tokens. Gemini 1.5 Pro llegó al millón de tokens.

Estas cifras suenan enormes, pero en la práctica se llenan más rápido de lo que parece.

## Entrada + salida = contexto total

Un punto importante que mucha gente no entiende: la ventana de contexto incluye **todo** — la entrada y la salida.

Si un modelo tiene una ventana de 128K tokens y tú le envías un documento de 100K tokens, le quedan 28K tokens para generar la respuesta. En una conversación, cada mensaje tuyo y cada respuesta del modelo se acumulan dentro de la ventana.

## ¿Qué pasa cuando llegas al límite?

Cuando la conversación o la entrada supera la ventana de contexto, el modelo tiene que "descartar" información:

**Truncamiento:** El sistema elimina los mensajes más antiguos de la conversación para hacer espacio a los nuevos. El modelo "olvida" el principio de la conversación.

**Error:** Algunos sistemas simplemente rechazan la entrada si supera el límite.

## Un LLM no recuerda entre conversaciones

Esta es quizás la confusión más grande: **un LLM no recuerda las conversaciones anteriores.**

Cada vez que abres un chat nuevo con ChatGPT, Claude o cualquier LLM, el modelo empieza completamente de cero. No sabe quién eres, qué le preguntaste ayer, ni qué acordaste con él la semana pasada.

¿Por qué? Porque el modelo es un programa estático que no cambia cuando hablas con él. Tus conversaciones no modifican los parámetros del modelo.

Entonces, ¿cómo es que ChatGPT y Claude "recuerdan" cosas? Porque las plataformas añaden capas por encima del modelo:

- **Historial de conversación:** El sistema guarda los mensajes anteriores y los vuelve a enviar al modelo en cada interacción
- **Memoria persistente:** Algunos sistemas extraen información clave de las conversaciones y la guardan en una base de datos separada
- **System prompt:** Instrucciones fijas que se envían al modelo en cada mensaje

Todo esto son "trucos" externos al modelo — el modelo en sí no recuerda nada.

## Consejos prácticos

**Sé conciso:** No llenes la ventana de contexto con texto innecesario.

**Estructura bien las conversaciones largas:** Si tienes una conversación muy larga, considera empezar una nueva con un resumen de lo discutido.

**Da contexto relevante:** Si necesitas que el modelo sepa algo, ponlo en el mensaje. No asumas que lo "sabe" de alguna conversación anterior.

## Conceptos clave de hoy

- **Ventana de contexto (context window):** La cantidad total de tokens que un LLM puede procesar de una vez (entrada + salida)
- **Truncamiento:** Cuando el sistema elimina mensajes antiguos para hacer espacio
- **Un LLM no recuerda entre conversaciones:** Cada chat empieza de cero; la "memoria" la gestionan capas externas
- **Historial de conversación:** Truco de la plataforma — reenvía los mensajes anteriores al modelo consumiendo tokens

---

*Próxima lección: El mapa de los LLM — quién es quién en 2026.*
