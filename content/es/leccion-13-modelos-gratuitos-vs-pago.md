---
title: "Lección 13: Gratuito vs de pago — ¿dónde puedo usar IA sin pagar?"
date: 2026-04-16
slug: "leccion-13-modelos-gratuitos-vs-pago"
draft: false
tags: ["coste", "gratuito", "ollama", "providers"]
categories: ["Infraestructura"]
summary: "Mapa de las opciones gratuitas reales para usar IA: desde chats web hasta modelos locales en tu ordenador."
ShowToc: true
weight: 13
---

## El mito: "la IA es cara"

Una de las barreras de entrada más comunes es la percepción de que usar IA cuesta dinero. Y sí, los mejores modelos comerciales tienen un coste. Pero hay un abanico enorme de opciones gratuitas que permiten hacer cosas muy interesantes sin gastar un céntimo.

## Nivel 1: Chats web gratuitos

La manera más fácil de usar IA gratis es a través de las interfaces web de los grandes modelos:

**ChatGPT (OpenAI):** La versión gratuita da acceso a GPT con un límite de mensajes por hora.

**Claude (Anthropic):** Claude.ai ofrece un tier gratuito con acceso al modelo, también con límites.

**Gemini (Google):** Google AI Studio permite usar Gemini gratis.

**Limitaciones:** Estos tiers gratuitos no dan acceso a la API. Puedes chatear en la web, pero no puedes conectar un agente.

## Nivel 2: APIs con tier gratuito

Algunos providers ofrecen APIs gratuitas con límites de uso:

**Google AI Studio:** Acceso gratuito a la API de Gemini con límites generosos. Una de las mejores opciones para empezar sin pagar.

**NVIDIA NIM:** Acceso a varios modelos (incluido Kimi K2.5) con tier gratuito. Tiene límites de velocidad (~40 peticiones por minuto) pero es funcional para agentes con uso moderado.

**Groq:** Tier gratuito con velocidad impresionante. Ideal para pruebas y agentes con poco volumen.

**Limitaciones:** Todos tienen límites de peticiones. Los tiers gratuitos pueden desaparecer o cambiar las condiciones en cualquier momento.

## Nivel 3: Modelos locales (coste cero por uso)

Aquí viene la opción más potente para presupuesto cero: **ejecutar un modelo en tu propio ordenador.**

Con herramientas como **Ollama**, puedes descargar modelos abiertos y ejecutarlos localmente. Una vez descargado, el uso es completamente gratuito.

**Requisitos de hardware:**

Para modelos pequeños (1-3B parámetros): 8GB de RAM, cualquier CPU moderno. Respuestas lentas pero funcionales.

Para modelos medianos (7-8B parámetros): 16GB de RAM, mejor con GPU dedicada. Respuestas a velocidad aceptable.

Para modelos grandes (13-70B parámetros): 32-64GB de RAM o GPU con mucha VRAM. Aquí ya hablamos de hardware serio.

**Ventajas:** Coste cero, privacidad total, funciona sin internet.

**Inconvenientes:** Necesitas hardware decente, los modelos locales son menos potentes que los mejores modelos comerciales.

## La combinación inteligente

La mayoría de gente que monta agentes combina varias opciones:

**Modelo caro para decisiones importantes:** Claude o GPT para tareas que requieren máxima calidad.

**Modelo gratuito para volumen:** NVIDIA NIM o un modelo local para tareas rutinarias y repetitivas.

Esta estrategia permite tener un agente potente sin arruinarse.

## Resumen práctico

Para alguien que empieza y quiere gastar cero:

1. **Empieza con Google AI Studio** (API gratuita de Gemini) para tu primer agente
2. **Instala Ollama** con un modelo de 7-8B para experimentar localmente
3. **Regístrate en NVIDIA NIM** como provider de reserva

Con estas tres opciones tienes un agente funcional sin pagar nada.

## Conceptos clave de hoy

- **Tiers gratuitos de API:** Google AI Studio, NVIDIA NIM, Groq — acceso gratuito con límites
- **Modelos locales (Ollama):** Descargas el modelo y lo ejecutas en tu hardware. Coste cero por uso
- **Combinación inteligente:** Modelo caro para calidad + modelo barato/gratuito para volumen
- **El coste es por token:** Pagas por cada palabra procesada, no por suscripción

---

*Próxima lección: Modelos locales — ejecutar un LLM en tu ordenador con Ollama.*
