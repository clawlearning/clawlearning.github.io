---
title: "Lección 7: Tokens — cómo un LLM 'lee' el texto"
date: 2026-04-08
slug: "leccion-07-tokens-y-tokenizacion"
draft: false
tags: ["tokens", "tokenizacion", "llm"]
categories: ["LLM"]
summary: "Qué son los tokens, por qué no son palabras, y por qué importa entenderlos cuando hablamos de coste, velocidad y límites."
ShowToc: true
weight: 7
---

## ¿Por qué hablamos de tokens?

Si has leído sobre IA, seguro que has visto frases como "el modelo admite 128K tokens" o "el precio es de $3 por millón de tokens". Pero ¿qué es exactamente un token?

Entender los tokens es práctico e importante porque afectan a tres cosas que te importarán cuando uses un LLM: **cuánto cuesta**, **cuánto texto puede procesar**, y **cuánto de rápido responde**.

## Un token NO es una palabra

Aquí viene la primera sorpresa: un LLM no lee palabras. Lee **tokens** — trozos de texto que pueden ser palabras enteras, partes de palabras, o incluso caracteres individuales.

El proceso de convertir texto en tokens se llama **tokenización**, y lo hace un programa llamado **tokenizador** antes de que el texto llegue al modelo.

Veamos ejemplos en inglés (donde la tokenización es más eficiente):

- "Hello" → 1 token (palabra común, va entera)
- "unhappiness" → 3 tokens: "un" + "happi" + "ness"
- "ChatGPT" → 2-3 tokens

Y en castellano:

- "Hola" → 1 token (palabra corta y común)
- "Inteligencia" → 3-4 tokens (palabra larga y menos común en datos de entrenamiento en inglés)
- "Desarrollo" → 2-3 tokens

## ¿Por qué funciona así?

La razón es eficiencia. Imagina que el modelo tuviera que aprender cada palabra de cada idioma como una unidad independiente. Necesitaría un vocabulario de millones de entradas.

En cambio, con la tokenización, el modelo trabaja con un vocabulario de 30.000-100.000 tokens que puede combinar para representar cualquier texto en cualquier idioma. Las palabras comunes en inglés tienden a ser un solo token. Las palabras menos comunes o de otros idiomas se dividen en trozos.

Piénsalo como piezas de Lego: con un conjunto limitado de piezas puedes construir cualquier cosa. Las piezas más grandes cubren los casos comunes rápidamente. Las piezas pequeñas permiten construir cualquier palabra inusual.

## ¿Por qué los idiomas no-ingleses "gastan" más tokens?

Esto es importante y tiene consecuencias prácticas: escribir en catalán, castellano, árabe, japonés o cualquier idioma que no sea inglés consume **más tokens** para expresar la misma idea.

¿Por qué? Porque el tokenizador se ha entrenado mayoritariamente con texto en inglés. Las palabras inglesas comunes se han convertido en tokens eficientes (1 palabra = 1 token). Las palabras en otros idiomas a menudo se dividen en fragmentos porque aparecen menos en los datos de entrenamiento.

En la práctica, un texto en castellano puede consumir entre un 20% y un 50% más de tokens que el mismo texto en inglés.

## Tokens de entrada vs tokens de salida

Cuando interactúas con un LLM, hay dos flujos de tokens:

**Tokens de entrada (input):** El texto que tú envías al modelo — tu pregunta, instrucciones, contexto, documentos adjuntos.

**Tokens de salida (output):** El texto que el modelo genera como respuesta. Cada palabra de la respuesta es uno o más tokens generados secuencialmente.

La mayoría de providers cobran ambos, pero con precios diferentes. Normalmente, los tokens de salida son más caros que los de entrada (porque generar requiere más cálculo que leer).

## El precio por token

Cuando ves un precio como "$3 por millón de tokens de entrada", ¿qué significa en términos prácticos?

Una regla rápida para el inglés: **1 token ≈ 0,75 palabras** (o al revés, **1 palabra ≈ 1,3 tokens**). Para el castellano, cuenta **1 palabra ≈ 1,5-2 tokens**.

Un millón de tokens en inglés son unas 750.000 palabras — el equivalente a unos 10 libros. A $3 por millón de tokens, procesar 10 libros cuesta $3.

## Herramientas para contar tokens

No tienes que estimar a ojo — hay herramientas gratuitas:

**OpenAI Tokenizer** (platform.openai.com/tokenizer): Pega un texto y te muestra cuántos tokens tiene y cómo se divide.

**Tiktokenizer** (tiktokenizer.vercel.app): Una interfaz visual donde ves los tokens con colores diferentes.

## ¿Por qué todo esto importa para ti?

Si quieres montar un agente con OpenClaw, los tokens serán parte constante de tu día a día:

1. **Coste:** Cada interacción consume tokens. Entender cuántos gastas te ayuda a controlar la factura.
2. **Límite de contexto:** El modelo tiene un límite de tokens que puede procesar de una vez.
3. **Velocidad:** Generar más tokens de salida = más tiempo de respuesta.
4. **Optimización:** Escribir prompts eficientes ahorra tokens y dinero.

## Conceptos clave de hoy

- **Token:** La unidad mínima de texto que procesa un LLM — puede ser una palabra, parte de una palabra, o un carácter
- **Tokenización:** El proceso de convertir texto en tokens
- **Tokenizador:** El programa que hace la tokenización (cada familia de modelos tiene el suyo)
- **Tokens de entrada vs salida:** La entrada es lo que envías, la salida es lo que el modelo genera
- **Regla rápida:** 1 palabra en inglés ≈ 1,3 tokens / 1 palabra en castellano ≈ 1,5-2 tokens

---

*Próxima lección: La ventana de contexto — la memoria a corto plazo de un LLM.*
