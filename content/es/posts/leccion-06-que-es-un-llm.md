---
title: "Lección 6: ¿Qué es un LLM? El modelo que entiende (y genera) texto"
date: 2026-04-07
slug: "leccion-06-que-es-un-llm"
draft: false
tags: ["llm", "basics", "modelo-de-lenguaje"]
categories: ["LLM"]
summary: "Definimos LLM, entendemos por qué es diferente de una búsqueda en Google, y descubrimos cómo funciona la generación de texto."
ShowToc: true
weight: 6
---

## Semana 2: entramos en el corazón de la revolución

Si la Semana 1 fue entender el "mar" de la IA en general, ahora nos sumergimos en la tecnología específica que ha causado la explosión actual: los **Large Language Models** (LLM) — Modelos Grandes de Lenguaje.

Cuando usas ChatGPT, Claude, Gemini o cualquier chatbot moderno, estás hablando con un LLM. Cuando un agente de IA escribe, resume, traduce o programa, lo hace con un LLM. Entender qué es y cómo funciona un LLM es la clave para entender todo lo que vendrá después.

## ¿Qué es un LLM?

Un LLM es un modelo de IA entrenado con cantidades masivas de texto que puede **entender y generar** lenguaje humano.

Desglosemos el nombre:

- **Large (Grande):** Tiene billones de parámetros y ha sido entrenado con billones de palabras
- **Language (Lenguaje):** Su dominio es el texto — entenderlo y producirlo
- **Model (Modelo):** Como vimos en la Lección 4, es un "cerebro" entrenado

Un LLM no es una base de datos que busca respuestas. No es un buscador como Google. No copia y pega texto de ningún sitio. Lo que hace es **generar texto nuevo** palabra por palabra, basándose en patrones que aprendió durante el entrenamiento.

## ¿Cómo funciona? La predicción de la siguiente palabra

El mecanismo base de un LLM es sorprendentemente sencillo de entender: **predice la siguiente palabra.**

Si le das el texto "El gato subió a la...", el modelo calcula las probabilidades de todas las palabras posibles que podrían ir a continuación y elige la más probable. "¿Mesa?" "¿Azotea?" "¿Silla?" Basándose en todo el texto que vio durante el entrenamiento, decide qué palabra tiene más sentido.

Pero no lo hace una vez — lo hace para cada palabra. Genera la primera, la suma al texto, y entonces predice la segunda. Y la tercera. Y así sucesivamente, palabra por palabra, hasta completar la respuesta.

Puede parecer un mecanismo demasiado simple para producir textos coherentes, razonamientos complejos y respuestas útiles. Pero cuando entrenas un modelo con billones de palabras y le das billones de parámetros, la predicción de "la siguiente palabra" se convierte en una capacidad emergente mucho más potente de lo que nadie esperaba.

## Un LLM no es un buscador

Cuando buscas en **Google**, el buscador recorre un índice de páginas web y te muestra las que mejor encajan con tu búsqueda. La información viene de páginas web reales que existen en algún servidor.

Cuando preguntas a un **LLM**, el modelo genera una respuesta nueva basada en patrones que aprendió durante el entrenamiento. No busca en internet (salvo que tenga búsqueda web activada). Produce texto nuevo basándose en la probabilidad estadística de las palabras.

Esto explica dos cosas importantes:

1. **Por qué los LLM pueden "inventarse" cosas:** Si el modelo predice que la siguiente palabra más probable es X, la pondrá — aunque sea incorrecta. Esto se conoce como **alucinación**.

2. **Por qué los LLM no siempre tienen información actualizada:** El modelo sabe lo que había en el texto de entrenamiento, que tiene una fecha de corte.

## ¿Qué puede hacer un LLM?

Un solo modelo puede: **generar texto**, **responder preguntas**, **traducir**, **resumir**, **programar**, **analizar**, y **conversar**. Todo con el mismo modelo — simplemente cambias lo que le pides (el prompt).

## ¿Qué NO puede hacer un LLM?

**No "sabe" nada con certeza:** Predice texto probable, no afirma verdades.

**No tiene experiencias ni emociones:** Cuando un LLM dice "entiendo cómo te sientes", está generando la frase que estadísticamente sigue tu mensaje. No siente nada.

**No piensa como un humano:** El proceso interno es cálculo matemático de probabilidades, no razonamiento consciente.

**No accede a internet** (por defecto): Salvo que tenga herramientas de búsqueda web activadas.

**No aprende de tus conversaciones:** Cada conversación empieza de cero. El modelo no se modifica cuando hablas con él.

## Conceptos clave de hoy

- **LLM (Large Language Model):** Modelo de IA entrenado con texto masivo para entender y generar lenguaje
- **Predicción de la siguiente palabra:** El mecanismo base de los LLM — genera texto prediciendo qué palabra viene después
- **Alucinación:** Cuando un LLM genera información incorrecta con aparente confianza
- **RLHF:** Técnica que hace que los modelos sean mejores siguiendo instrucciones humanas

---

*Próxima lección: Tokens — cómo un LLM "lee" el texto.*
