---
title: "Lección 4: ¿Qué es un modelo de IA? (sin matemáticas)"
date: 2026-04-03
slug: "leccion-04-que-es-un-modelo"
draft: false
tags: ["modelo", "entrenamiento", "parametros"]
categories: ["Fundamentos"]
summary: "Qué es un modelo, cómo se entrena, por qué hay modelos grandes y pequeños, y por qué no todos son iguales."
ShowToc: true
weight: 4
---

## ¿Qué es un modelo?

Un modelo de IA es un programa que ha sido **entrenado con datos** para hacer una tarea. Piensa en él como un cerebro especializado: ha absorbido una cantidad enorme de información y ha aprendido patrones que le permiten hacer predicciones o generar contenido.

La palabra "modelo" puede confundir porque se usa mucho en ciencia con significados diferentes. En IA, un modelo es simplemente el resultado del entrenamiento: un archivo (o conjunto de archivos) que contiene todo lo que la máquina ha aprendido.

## El entrenamiento: cómo aprende un modelo

Imagina que quieres enseñar a un niño a reconocer gatos. No le das una definición ("animal de cuatro patas con bigotes") — le muestras cientos de fotos de gatos y dices "esto es un gato". Con suficientes ejemplos, el niño aprende a reconocer gatos que nunca ha visto.

Un modelo de IA funciona igual, pero a una escala masiva:

1. **Le das datos de entrenamiento** — millones o billones de ejemplos
2. **El modelo busca patrones** — conexiones entre los datos que le permiten predecir
3. **Se evalúa y se corrige** — si se equivoca, se ajustan los parámetros internos
4. **Se repite** el proceso hasta que las predicciones son suficientemente buenas

Para un modelo de lenguaje como Claude o GPT, los "datos de entrenamiento" son cantidades enormes de texto: libros, artículos, webs, código, conversaciones. El modelo aprende cómo funciona el lenguaje: qué palabras suelen ir juntas, cómo se estructura una frase, cómo se desarrolla un argumento.

## Parámetros: el tamaño del cerebro

Cuando oyes hablar de modelos de "7B", "70B" o "405B", la B significa **billones de parámetros**.

Un parámetro es un número interno del modelo que se ajusta durante el entrenamiento. Piensa en los parámetros como las conexiones sinápticas del cerebro: cada una guarda un trocito de lo que el modelo ha aprendido.

Más parámetros significa que el modelo puede aprender patrones más complejos y sutiles. Pero también que necesita más memoria para funcionar y es más lento.

Para ponerlo en perspectiva:

- Un modelo pequeño (1-3B parámetros) puede funcionar en tu ordenador. Hace tareas básicas bien, pero se queda corto con razonamientos complejos.
- Un modelo mediano (7-13B) necesita un buen ordenador con GPU. Puede mantener conversaciones coherentes y hacer tareas variadas.
- Un modelo grande (70B+) necesita servidores potentes. Es lo que usan los servicios comerciales como ChatGPT o Claude.
- Un modelo gigante (200B+) necesita centros de datos enteros. Son los modelos punta de las grandes empresas.

## Más grande no siempre es mejor

Una trampa común es pensar que el modelo más grande será siempre el mejor. No es así.

Un modelo pequeño bien entrenado con datos de calidad puede superar a un modelo grande entrenado con datos mediocres. La calidad de los datos de entrenamiento es tan importante como el tamaño del modelo — y a menudo más.

Además, un modelo gigante puede ser excesivo para tu tarea. Si solo necesitas que te resuma emails, un modelo de 7B puede hacerlo perfectamente. Gastar dinero en un modelo de 200B para esa tarea sería como alquilar un camión para ir a comprar el pan.

## La importancia de los datos

Hay una expresión en inglés: **"Garbage in, garbage out"** — si le das basura, te devuelve basura. Esto es especialmente cierto para los modelos de IA.

Un modelo entrenado con textos llenos de errores tendrá errores. Un modelo entrenado mayoritariamente con textos en inglés será peor en catalán o castellano. Un modelo entrenado con datos sesgados reproducirá esos sesgos.

Por eso las empresas que entrenan modelos invierten tanto en **curar los datos**: seleccionar, limpiar y equilibrar los textos con los que entrenan sus modelos.

## Modelos abiertos vs modelos cerrados

**Modelos cerrados** (propietarios): No puedes ver cómo están hechos ni descargarlos. Solo puedes usarlos a través de la API o la web de la empresa. Ejemplos: GPT de OpenAI, Claude de Anthropic, Gemini de Google.

**Modelos abiertos** (open source u open weights): Puedes descargar el modelo, ejecutarlo en tu ordenador, modificarlo y usarlo como quieras. Ejemplos: LLaMA de Meta, Mistral, Qwen.

Los modelos cerrados suelen ser más potentes y no necesitas hardware propio. Pero dependes de la empresa, pagas por uso, y tus datos pasan por sus servidores.

Los modelos abiertos te dan control total, privacidad y coste cero por uso. Pero necesitas hardware para ejecutarlos y a menudo son menos potentes que los mejores modelos cerrados.

## La analogía del chef

Si todo esto aún suena abstracto, piensa en un chef:

- Los **datos de entrenamiento** son todos los platos que ha probado, las recetas que ha estudiado, las cocinas que ha visitado
- Los **parámetros** son sus habilidades y conocimientos acumulados
- El **modelo** es el chef entrenado, listo para cocinar
- El **prompt** (que veremos más adelante) es lo que le pides que cocine
- La **respuesta** es el plato que te sirve

Un chef con más experiencia (más parámetros) y mejores maestros (mejores datos) hará mejores platos. Pero incluso el mejor chef necesita que le pidas bien lo que quieres.

## Conceptos clave de hoy

- **Modelo:** El resultado del entrenamiento — un archivo que contiene todo lo que la máquina ha aprendido
- **Entrenamiento:** El proceso de alimentar un modelo con datos para que aprenda patrones
- **Parámetros (7B, 70B, 405B):** Las conexiones internas del modelo. Más parámetros = más capacidad, más recursos
- **Datos de entrenamiento:** El material con el que aprende el modelo. La calidad es clave
- **Modelo abierto:** Puedes descargarlo y ejecutarlo en tu hardware
- **Modelo cerrado:** Solo accesible vía API o web de la empresa

---

*Próxima lección: La IA que ya usas sin saberlo — un recorrido por todas las aplicaciones de IA de tu día a día.*
