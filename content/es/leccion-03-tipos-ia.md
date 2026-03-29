---
title: "Lección 3: Tipos de IA — cómo clasificamos las máquinas inteligentes"
date: 2026-04-02
slug: "leccion-03-tipos-ia"
draft: false
tags: ["ia", "machine-learning", "clasificacion"]
categories: ["Fundamentos"]
summary: "Las diferentes categorías de IA explicadas de forma práctica: Machine Learning, Deep Learning, IA generativa y mucho más."
ShowToc: true
weight: 3
---

## ¿Por qué clasificar la IA?

Cuando alguien dice "IA", puede estar hablando de cosas muy diferentes. El filtro de spam de tu email es IA. ChatGPT es IA. Un coche autónomo es IA. Pero funcionan de maneras completamente diferentes.

Entender los tipos de IA te ayudará a saber de qué habla la gente cuando dice "machine learning", "deep learning" o "IA generativa" — términos que suenan parecidos pero significan cosas muy distintas.

## El gran paraguas: Inteligencia Artificial

La IA es el paraguas general que lo engloba todo. Cualquier sistema que realice tareas que normalmente requerirían inteligencia humana es IA. Dentro de este paraguas, hay niveles.

Piénsalo como círculos concéntricos: la IA es el círculo grande, dentro está el Machine Learning, y dentro de este el Deep Learning. No son cosas diferentes — cada uno es un subconjunto del anterior.

## Machine Learning: aprender de los ejemplos

El **Machine Learning** (ML, aprendizaje automático) es la rama de la IA donde la máquina aprende de los ejemplos en lugar de ser programada con reglas.

En la programación tradicional, tú le dices al ordenador exactamente qué hacer: "si el email contiene la palabra 'viagra', es spam". En Machine Learning, le das miles de emails etiquetados como "spam" o "no spam", y la máquina aprende sola a distinguirlos. Puede descubrir patrones que tú ni imaginabas.

Hay tres tipos principales de aprendizaje:

**Aprendizaje supervisado:** Le das datos con las respuestas correctas, y aprende a predecirlas. Ejemplo: le muestras 10.000 fotos de gatos y perros etiquetadas, y aprende a distinguirlos en fotos nuevas.

**Aprendizaje no supervisado:** Le das datos sin etiquetar, y busca patrones por sí solo. Ejemplo: le das datos de clientes y descubre grupos (los que compran mucho, los que compran poco, los que compran de noche...) sin que tú le digas qué grupos buscar.

**Aprendizaje por refuerzo:** La máquina aprende por ensayo y error, recibiendo "recompensas" cuando acierta y "penalizaciones" cuando falla. Ejemplo: un programa que juega al ajedrez juega millones de partidas contra sí mismo y aprende qué estrategias funcionan.

## Deep Learning: redes neuronales profundas

El **Deep Learning** es un subconjunto del Machine Learning que usa **redes neuronales artificiales** — estructuras inspiradas (muy vagamente) en el cerebro humano.

Una red neuronal es una cadena de capas de "neuronas" que procesan la información. Cada capa detecta patrones a un nivel diferente. En reconocimiento de imágenes, por ejemplo, la primera capa detecta líneas, la segunda formas, la tercera objetos, la cuarta escenas completas.

"Profundo" (deep) significa que la red tiene muchas capas. Las redes de los años 90 tenían 2-3 capas. Las de hoy pueden tener cientos. Más capas = capacidad de detectar patrones más complejos, pero también necesita más datos y más potencia de cálculo.

Todo lo que estamos viendo en el boom actual — reconocimiento de voz, generación de texto, traducción, generación de imágenes — es Deep Learning.

## IA Generativa: crear cosas nuevas

La **IA Generativa** es la rama que ha causado la explosión actual. Son modelos entrenados para **crear contenido nuevo**: texto, imágenes, audio, vídeo, código.

A diferencia de una IA que clasifica (spam o no spam) o predice (cuál será el precio mañana), la IA generativa **produce cosas que no existían**. Escribe textos, pinta imágenes, compone música.

Los ejemplos más conocidos:

- **Generación de texto:** GPT, Claude, Gemini, LLaMA
- **Generación de imágenes:** DALL-E, Midjourney, Stable Diffusion
- **Generación de código:** GitHub Copilot, Claude, Cursor
- **Generación de vídeo:** Sora, Runway
- **Generación de voz:** ElevenLabs

Cuando usamos ChatGPT o Claude, estamos usando IA generativa de texto. La herramienta no busca información en internet (salvo que tenga búsqueda web activada) — **genera** texto nuevo palabra por palabra.

## ¿Dónde encajan las herramientas que conoces?

**ChatGPT, Claude, Gemini:** Son IA generativa de texto, construida con Deep Learning, específicamente con la arquitectura Transformer. Pertenecen a la familia de los LLM (Large Language Models), que veremos en detalle en la semana 2.

**Google Maps (rutas):** Machine Learning supervisado. Entrenado con datos de tráfico real para predecir tiempos de llegada.

**Spotify (recomendaciones):** Machine Learning no supervisado + supervisado. Agrupa usuarios con gustos similares y predice qué te gustará.

**Filtro de spam:** Machine Learning supervisado. Entrenado con millones de emails etiquetados.

**Tesla Autopilot:** Deep Learning con visión por computador + aprendizaje por refuerzo.

## No todo lo que dice "IA" es IA

Un aviso importante: el término "IA" se ha convertido en un término de márketing. Verás productos que dicen "con IA" que realmente hacen cosas muy simples — a veces son reglas programadas a mano sin ningún aprendizaje automático.

Si una empresa dice que su producto "usa IA", pregúntate: ¿aprende de los datos? ¿O simplemente sigue reglas fijas? Si es lo segundo, es programación tradicional con un nombre moderno.

## Conceptos clave de hoy

- **Machine Learning:** La máquina aprende de los ejemplos en lugar de ser programada con reglas
- **Deep Learning:** Machine Learning con redes neuronales de muchas capas
- **IA Generativa:** Modelos que crean contenido nuevo (texto, imágenes, código, vídeo)
- **Aprendizaje supervisado:** Aprender con datos etiquetados (preguntas con respuesta correcta)
- **Aprendizaje no supervisado:** Encontrar patrones en datos sin etiquetar
- **Aprendizaje por refuerzo:** Aprender por ensayo y error con recompensas

---

*Próxima lección: ¿Qué es un modelo de IA? — sin matemáticas, prometido.*
