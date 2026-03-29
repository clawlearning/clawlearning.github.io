---
title: "Lección 10: Tu primer prompt — cómo hablar con un LLM"
date: 2026-04-11
slug: "leccion-10-prompts-basicos"
draft: false
tags: ["prompts", "prompt-engineering", "llm"]
categories: ["LLM"]
summary: "Aprende a escribir prompts efectivos y entiende por qué el resultado depende de cómo preguntas."
ShowToc: true
weight: 10
---

## El prompt: tu herramienta más poderosa

De todas las cosas que aprenderás en este curso, la capacidad de escribir buenos prompts es probablemente la más útil en el día a día. Un buen prompt puede ser la diferencia entre una respuesta inútil y una respuesta brillante — con el **mismo modelo**.

Un **prompt** es simplemente el texto que le envías al modelo. Tu pregunta, tus instrucciones, el contexto que le das. Todo lo que escribes en la caja de texto de un chatbot es un prompt.

## ¿Por qué importa cómo preguntas?

Recuerda de la Lección 6: un LLM genera texto prediciendo la palabra más probable dada la entrada. Si la entrada es vaga, la salida será vaga. Si la entrada es específica y clara, la salida será mucho mejor.

Comparemos dos prompts para la misma tarea:

**Prompt malo:** "Explícame la IA"

Demasiado amplio. El modelo no sabe a qué nivel explicarlo, cuánto de largo debe ser, ni qué aspecto de la IA te interesa.

**Prompt bueno:** "Explícame qué es la inteligencia artificial en 3 párrafos cortos. El público es una persona adulta sin conocimientos técnicos. Usa ejemplos cotidianos como el móvil o Netflix."

Aquí el modelo sabe exactamente qué quieres: longitud, nivel, y estilo.

## Las cuatro piezas de un buen prompt

### 1. Rol

Decirle al modelo quién es o qué papel debe adoptar.

"Eres un profesor de informática que explica conceptos a gente sin formación técnica."

### 2. Contexto

Darle la información necesaria para responder bien.

"Estoy preparando una presentación para los directivos de mi empresa. No tienen formación técnica pero toman decisiones de presupuesto."

### 3. Instrucción

Decirle exactamente qué quieres que haga.

"Escríbeme 5 puntos clave sobre por qué deberíamos invertir en IA, con un ejemplo concreto para cada punto."

### 4. Formato de salida

Decirle cómo quieres la respuesta.

"Responde en formato lista con puntos numerados. Cada punto debe tener un título en negrita seguido de una explicación de 2-3 líneas."

## Ejemplos prácticos

**Tarea: Escribir un email**

Prompt básico: "Escribe un email a mi jefe sobre vacaciones"

Prompt mejorado: "Escribe un email breve y profesional a mi jefe, Jordi, pidiéndole 3 días de vacaciones la semana del 15 de junio. El tono debe ser cordial pero directo. Menciona que dejaré las tareas pendientes organizadas."

**Tarea: Entender un concepto**

Prompt básico: "¿Qué es blockchain?"

Prompt mejorado: "Explícame qué es blockchain como si se lo explicaras a alguien que sabe usar un ordenador pero no sabe programar. Usa una analogía de la vida cotidiana. Máximo 200 palabras."

## Errores comunes

**Ser demasiado vago:** "Ayúdame con mi proyecto" — ¿Qué proyecto? ¿Qué ayuda?

**Hacer demasiadas cosas a la vez:** Mejor ir paso a paso.

**Asumir que lo sabe todo:** "Haz lo que te dije ayer" — El modelo no recuerda conversaciones anteriores.

**No especificar el formato:** Si no le dices cómo quieres la respuesta, el modelo elegirá él.

## Prompt engineering: no hace falta ser programador

El término **prompt engineering** suena muy técnico, pero simplemente significa "el arte de escribir buenos prompts". No es programación — es comunicación clara y precisa.

Algunas técnicas útiles:

**Few-shot prompting:** Darle ejemplos de lo que quieres. "Transforma estos títulos en slugs para URLs. Ejemplo: '¿Qué es la IA?' → 'que-es-la-ia'. Ahora hazlo con: '¿Cómo funciona un LLM?'"

**Chain of thought:** Pedirle que razone paso a paso. "Antes de dar la respuesta final, explica tu razonamiento paso a paso."

**Iteración:** No esperes que el primer prompt sea perfecto. Prueba, mira el resultado, y ajusta.

## El prompt es la interfaz

Piensa en el prompt como la **interfaz** entre tú y el modelo. Un modelo excelente con un prompt malo dará un resultado mediocre. Un modelo decente con un prompt excelente puede dar un resultado sorprendentemente bueno.

Cuando configures tu agente con OpenClaw, el **system prompt** será la pieza más importante de toda la configuración. Dedicarle tiempo vale mucho la pena.

## Conceptos clave de hoy

- **Prompt:** El texto que envías al modelo — pregunta, instrucciones, contexto
- **Las 4 piezas:** Rol + Contexto + Instrucción + Formato de salida
- **Prompt engineering:** El arte de escribir prompts efectivos (no requiere programación)
- **Few-shot:** Dar ejemplos al modelo para que entienda el formato deseado
- **Chain of thought:** Pedir al modelo que razone paso a paso para mejorar la precisión
- **Iteración:** Ajustar el prompt basándose en el resultado hasta obtener lo que quieres

---

*Próxima lección: Empezamos la Semana 3 — ¿Qué es un provider? Quién te da acceso a los modelos.*
