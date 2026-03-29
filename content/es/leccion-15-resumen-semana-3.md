---
title: "Lección 15: Resumen — el mapa completo para acceder a un LLM"
date: 2026-04-18
slug: "leccion-15-resumen-semana-3"
draft: false
tags: ["resumen", "comparativa", "decision"]
categories: ["Infraestructura"]
summary: "Consolidamos todo lo aprendido con un diagrama mental claro, una tabla comparativa y un árbol de decisión para elegir modelo y provider."
ShowToc: true
weight: 15
---

## Medio curso: ¿dónde estamos?

Llevamos tres semanas y ya tienes las bases sólidas. Hagamos memoria:

**Semana 1** entendiste qué es la IA, de dónde viene, y que ya la usas cada día. **Semana 2** descubriste cómo funcionan los LLM: tokens, ventana de contexto, modelos, prompts. **Semana 3** has aprendido cómo acceder a ellos: providers, APIs, opciones gratuitas, modelos locales.

Hoy consolidamos todo con una visión global.

## El diagrama completo

```
TÚ (humano o agente)
    │
    ▼
INTERFAZ (web, Telegram, app, terminal)
    │
    ▼
FRAMEWORK (OpenClaw, LangChain, o directamente la API)
    │
    ▼
PROVIDER (OpenAI, Anthropic, Groq, NVIDIA NIM, Ollama local)
    │
    ▼
MODELO (GPT, Claude, LLaMA, Mistral, Qwen...)
    │
    ▼
RESPUESTA (texto generado token a token)
```

Cada capa es independiente de las demás. Puedes cambiar de provider sin cambiar de framework. Esta modularidad es lo que hace que el ecosistema sea tan flexible.

## Tabla comparativa de providers

| Provider | Modelos | Precio | Velocidad | Tier gratuito | Ideal para |
|----------|---------|--------|-----------|---------------|------------|
| OpenAI | GPT-4, GPT-5 | Alto | Buena | Limitado (web) | Máxima calidad |
| Anthropic | Claude | Alto | Buena | Limitado (web) | Instrucciones complejas, docs largos |
| Google AI | Gemini | Medio-bajo | Buena | Sí (API) | Empezar gratis |
| Groq | LLaMA, Mistral | Bajo | Muy rápida | Sí (API) | Velocidad |
| NVIDIA NIM | Kimi, LLaMA | Bajo | Aceptable | Sí (API) | Agente gratuito |
| OpenRouter | Todos | Variable | Variable | No | Cambiar de modelo fácilmente |
| Ollama (local) | Todos los abiertos | Cero | Depende del hardware | N/A | Privacidad, coste cero |

## Árbol de decisión

**¿Tienes presupuesto?** Si **no** → Ollama local (si tienes 16GB+ RAM) o Google AI Studio / NVIDIA NIM.

**¿Qué necesitas?** Máxima calidad → Claude o GPT. Velocidad → Groq. Privacidad → Ollama. Volumen barato → Provider de inferencia con modelo abierto.

**¿Qué tan complejo es tu uso?** Simple → modelo de 7-8B. Intermedio → modelo de 30-70B o comercial medio. Avanzado → modelos punta.

## Ejercicio práctico sugerido

Prueba tres modelos gratuitos y compara respuestas:

1. **ChatGPT** (chat.openai.com)
2. **Claude** (claude.ai)
3. **Google AI Studio** (aistudio.google.com)

Haz la **misma pregunta** a los tres. Compara las respuestas: ¿cuál es más claro? ¿Cuál es más preciso? ¿Qué tono te gusta más?

## Glosario de la Semana 3

- **Provider:** Quien te da acceso al modelo
- **API:** Interfaz de comunicación entre programas
- **API key:** Clave secreta que te identifica
- **Ollama:** Herramienta para ejecutar modelos locales
- **Cuantización:** Reducir el tamaño del modelo para mayor eficiencia
- **OpenRouter:** Agregador de modelos y providers
- **VRAM:** Memoria de la GPU

## La semana que viene

Con todo este conocimiento base, estamos preparados para el gran salto: **los agentes de IA**. No simples chatbots que responden preguntas, sino programas que ejecutan tareas, usan herramientas, y trabajan de forma autónoma.

La Semana 4 cambia de marcha.

## Conceptos clave de hoy

- **El flujo completo:** Tú → Interfaz → Framework → Provider → Modelo → Respuesta
- **Cada capa es intercambiable:** Puedes cambiar de modelo, provider o framework independientemente
- **La elección depende del caso de uso:** No hay "mejor" universal
- **La combinación es la clave:** Modelo caro para calidad + modelo barato para volumen

---

*Próxima lección: Empezamos la Semana 4 — ¿Qué es un agente de IA? Más que un chatbot.*
