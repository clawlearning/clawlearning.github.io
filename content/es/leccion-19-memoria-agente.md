---
title: "Lección 19: La memoria de un agente — cómo recuerda (y olvida)"
date: 2026-04-24
slug: "leccion-19-memoria-agente"
draft: false
tags: ["memoria", "embeddings", "rag"]
categories: ["Agentes"]
summary: "Los tipos de memoria de un agente, qué son los embeddings, cómo funciona RAG, y por qué la memoria es el problema más difícil."
ShowToc: true
weight: 19
---

## El problema de la memoria

Recuerda la Lección 8: un LLM no recuerda nada entre conversaciones. Cada interacción empieza de cero. Pero un agente útil necesita recordar cosas: quién eres, qué has hablado, qué preferencias tienes, qué tareas están pendientes.

La memoria es lo que transforma un chatbot genérico en un asistente personal que te conoce. Y es, posiblemente, el problema técnico más difícil de los agentes actuales.

## Memoria a corto plazo: el context window

La forma más básica de memoria es la **ventana de contexto**. Dentro de una misma conversación, el agente "recuerda" todo lo dicho porque el historial se reenvía al modelo con cada petición.

Limitaciones: mida finita, coste creciente con cada mensaje, desaparece entre conversaciones.

## Memoria a largo plazo: guardar información fuera del modelo

Para recordar entre conversaciones, el agente necesita un sistema externo — una base de datos donde guardar información relevante y recuperarla cuando haga falta.

1. Durante una conversación, el agente detecta información importante
2. La guarda en una base de datos
3. En futuras conversaciones, consulta la base de datos
4. Inyecta esa información en el prompt para que el modelo la "recuerde"

## Embeddings: la clave de la búsqueda semántica

Un **embedding** es una representación numérica del significado de un texto. Convierte palabras y frases en vectores de números que capturan su significado.

¿Por qué es útil? Porque con embeddings puedes hacer **búsqueda semántica** — buscar por significado, no por palabras exactas.

Ejemplo: si el agente busca información sobre "coche eléctrico" y en la base de datos hay guardada la frase "vehículos con batería", la búsqueda por palabras exactas no encontraría nada. Pero la búsqueda por embeddings sí, porque los vectores de "coche eléctrico" y "vehículos con batería" están próximos en el espacio semántico.

## RAG: Retrieval Augmented Generation

**RAG** combina la búsqueda de información con la generación de texto:

1. El agente recibe una pregunta
2. Antes de responder, busca información relevante en su base de datos (retrieval)
3. Añade la información encontrada al prompt del modelo (augmented)
4. El modelo genera la respuesta teniendo en cuenta la información recuperada (generation)

RAG es como darle al modelo una "chuleta" personalizada para cada pregunta.

## Tipos de memoria en la práctica

**Memoria de conversación:** Historial de la conversación actual.

**Memoria de hechos:** Extrae y guarda hechos concretos: "El usuario vive en Barcelona", "El usuario trabaja en IT".

**Memoria de documentos:** Procesa e indexa documentos para consulta futura.

## Por qué es el problema más difícil

**¿Qué guardar?** No todo lo dicho es relevante. **¿Cuándo olvidar?** La información caduca. **¿Cuánto recuperar?** Demasiado llena el context window. **Privacidad:** La memoria contiene información sensible.

## Conceptos clave de hoy

- **Memoria a corto plazo:** El context window de la conversación actual
- **Memoria a largo plazo:** Base de datos externa que guarda información entre conversaciones
- **Embeddings:** Representación numérica del significado del texto — permite búsqueda semántica
- **Búsqueda semántica:** Buscar por significado, no por palabras exactas
- **RAG:** Recuperar información relevante e inyectarla en el prompt antes de generar la respuesta

---

*Próxima lección: Frameworks de agentes — OpenClaw, LangChain y otros.*
