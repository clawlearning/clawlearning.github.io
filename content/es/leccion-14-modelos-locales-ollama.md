---
title: "Lección 14: Modelos locales — ejecutar un LLM en tu ordenador con Ollama"
date: 2026-04-17
slug: "leccion-14-modelos-locales-ollama"
draft: false
tags: ["ollama", "local", "hardware", "modelos"]
categories: ["Infraestructura"]
summary: "Qué significa ejecutar un modelo localmente, cuándo tiene sentido, cómo funciona Ollama, y qué modelos puedes correr según tu hardware."
ShowToc: true
weight: 14
---

## ¿Qué significa "modelo local"?

Hasta ahora hemos hablado de modelos que se ejecutan en los servidores de alguien — OpenAI, Anthropic, Google. Tú envías texto por internet, ellos lo procesan, y te devuelven la respuesta.

Un **modelo local** es exactamente lo contrario: descargas el modelo a tu ordenador y lo ejecutas tú. El texto no sale de tu máquina. No necesitas internet. No pagas por token.

Es como la diferencia entre escuchar música en streaming (Spotify) y tener los MP3 en tu disco duro.

## ¿Cuándo tiene sentido un modelo local?

**Tiene sentido cuando:** quieres privacidad total, coste cero por uso, funcionar sin internet, o experimentar con diferentes modelos sin preocuparte por la factura.

**No tiene sentido cuando:** necesitas la máxima calidad posible, tu ordenador es antiguo o tiene poca RAM, necesitas respuestas muy rápidas con modelos grandes, o prefieres no complicarte con instalaciones.

## Ollama: la forma más fácil

**Ollama** hace que ejecutar modelos locales sea tan fácil como instalar un programa y escribir un comando.

Sin Ollama, ejecutar un modelo local requiere: descargar los pesos del modelo, instalar frameworks de Python, configurar CUDA... Un lío técnico considerable.

Con Ollama, el proceso es:

1. Instalas Ollama (un solo programa)
2. Escribes `ollama pull llama3.1:8b` (descarga el modelo)
3. Escribes `ollama run llama3.1:8b` (ya estás hablando con el modelo)

Ollama se encarga de todo: descarga el modelo, detecta si tienes GPU o no, optimiza la memoria, y sirve una API local compatible con el formato de OpenAI. Esto último es clave: cualquier programa que funcione con la API de OpenAI (incluido OpenClaw) puede usar un modelo de Ollama simplemente cambiando la URL.

## ¿Qué modelos puedes ejecutar?

Depende de tu hardware. La regla general es que necesitas entre 0,5GB y 1GB de RAM (o VRAM de GPU) por cada billón de parámetros del modelo en formato cuantizado.

**8GB de RAM:** Modelos de 1-3B. Funcionales para tareas básicas.

**16GB de RAM:** Modelos de 7-8B. Aquí empieza a ser útil de verdad. Con GPU dedicada, la velocidad es aceptable.

**32GB de RAM:** Modelos de 13-14B. Mejora notable en calidad.

**64GB+ o GPU potente:** Modelos de 30-70B. Calidad comparable con modelos comerciales.

## CPU vs GPU

**CPU:** Funciona siempre, no hace falta GPU especial. Pero es lento. Un modelo de 7B a CPU puede tardar 10-30 segundos por frase.

**GPU NVIDIA:** Mucho más rápido. El mismo modelo de 7B puede responder en 1-3 segundos. Las GPUs NVIDIA con CUDA son el estándar.

**GPU AMD / Apple Silicon:** Ollama también soporta GPUs AMD (ROCm) y chips Apple Silicon (M1/M2/M3/M4), que son sorprendentemente buenos para inferencia local gracias a su memoria unificada.

## Cuantización: hacer el modelo más pequeño

Cuando descargas un modelo con Ollama, normalmente lo descargas **cuantizado**. La cuantización reduce la precisión de los parámetros (de 32 bits a 8 bits o menos) para hacerlo más pequeño y rápido.

Un modelo LLaMA de 7B sin cuantizar ocupa unos 14GB. Cuantizado a 4 bits (Q4), ocupa unos 4GB. La pérdida de calidad es sorprendentemente pequeña.

Cuando ves nombres como `llama3.1:8b-q4_0`, el `q4_0` indica el nivel de cuantización.

## Ollama como API local

Cuando ejecutas Ollama, sirve una **API local** en el puerto 11434. Para un agente OpenClaw:

- URL: `http://localhost:11434/v1`
- Modelo: `llama3.1:8b` (o el que hayas descargado)
- API key: no hace falta (es local)

El agente habla con el modelo local exactamente igual que hablaría con OpenAI o Anthropic.

## Conceptos clave de hoy

- **Modelo local:** Un LLM que se ejecuta en tu hardware, sin depender de servicios externos
- **Ollama:** Herramienta que simplifica descargar y ejecutar modelos locales
- **Cuantización (Q4, Q8):** Reducción de la precisión del modelo para hacerlo más pequeño y rápido
- **VRAM:** La memoria de la GPU — determina el tamaño del modelo que puedes ejecutar
- **API local:** Ollama sirve una API compatible con OpenAI en el puerto 11434

---

*Próxima lección: Resumen de la Semana 3 — el mapa completo para acceder a un LLM.*
