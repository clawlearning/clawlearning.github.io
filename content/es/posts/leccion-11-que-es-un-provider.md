---
title: "Lección 11: ¿Qué es un provider? Quién te da acceso a los modelos"
date: 2026-04-14
slug: "leccion-11-que-es-un-provider"
draft: false
tags: ["provider", "acceso", "infraestructura"]
categories: ["Infraestructura"]
summary: "Entiende la cadena modelo → provider → usuario, y por qué el mismo modelo puede costar diferente según dónde lo uses."
ShowToc: true
weight: 11
---

## Semana 3: cómo acceder a los modelos

Ya sabes qué es un LLM, cómo funciona, y qué modelos existen. Ahora viene la pregunta práctica: **¿cómo accedo?** No puedes llamar a Anthropic y pedir que te activen Claude. Necesitas un intermediario — y eso es un provider.

## ¿Qué es un provider?

Un **provider** es una empresa o servicio que te da acceso a un modelo de IA. Es el intermediario entre tú y el modelo.

Piensa en una analogía sencilla: el modelo es una película. El provider es la plataforma donde la ves — Netflix, HBO, Amazon Prime. La misma película puede estar disponible en varias plataformas, con precios y condiciones diferentes. Con los LLM pasa exactamente lo mismo.

## Providers directos vs providers de inferencia

### Providers directos

Son las empresas que **crean** el modelo y te lo venden directamente. **OpenAI** vende acceso a GPT. **Anthropic** vende acceso a Claude. **Google** ofrece Gemini.

Con un provider directo, tienes la garantía de usar el modelo "oficial", con las últimas actualizaciones. Normalmente es la opción más cara.

### Providers de inferencia

Son empresas que **no crean** modelos, pero los ejecutan en sus servidores y te los ofrecen. Cogen modelos abiertos (LLaMA, Mistral, Qwen) y los ponen disponibles para todos.

**Groq** es conocido por su velocidad brutal. **Together AI** ofrece gran variedad de modelos abiertos. **NVIDIA NIM** proporciona acceso con un tier gratuito. **OpenRouter** es un agregador — un único punto de acceso a decenas de modelos.

La ventaja de los providers de inferencia es el precio y la variedad. El inconveniente es que no siempre tienen los modelos más recientes.

## ¿Por qué varía el precio?

**Hardware:** Cada provider usa hardware diferente. **Escala:** Un provider grande puede ofrecer precios más bajos. **Margen comercial:** Cada provider decide su margen. **Optimizaciones:** Algunos aplican cuantización que puede afectar ligeramente la calidad.

## La cadena completa

```
Tú → Agente (OpenClaw) → Provider (API) → Modelo (LLM) → Respuesta
```

## ¿Cómo elegir un provider?

**Coste:** Si el presupuesto es cero, busca tiers gratuitos (NVIDIA NIM, Google AI Studio, Groq free).

**Velocidad (latencia):** Si necesitas respuestas rápidas, Groq es el rey.

**Calidad del modelo:** Si necesitas el mejor modelo posible, ve al provider directo.

**Fiabilidad:** Los providers grandes tienen infraestructura robusta. Los tiers gratuitos pueden tener cortes.

## Conceptos clave de hoy

- **Provider:** Empresa o servicio que te da acceso a un modelo de IA
- **Provider directo:** El creador del modelo que te lo vende (OpenAI, Anthropic, Google)
- **Provider de inferencia:** Empresa que ejecuta modelos abiertos en sus servidores (Groq, Together, NVIDIA NIM)
- **OpenRouter:** Agregador que da acceso a múltiples modelos y providers desde un solo punto
- **La cadena:** Tú → Agente → Provider (API) → Modelo → Respuesta

---

*Próxima lección: ¿Qué es una API? — La puerta de entrada a los LLM.*
