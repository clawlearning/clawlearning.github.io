---
title: "Lección 23: Configurar tu primer modelo y provider"
date: 2026-04-30
slug: "leccion-23-configurar-modelo-provider"
draft: false
tags: ["openclaw", "configuracion", "provider", "api-key"]
categories: ["OpenClaw"]
summary: "Conectamos OpenClaw a un LLM: elegir modelo, obtener API key gratuita, y configurar openclaw.json."
ShowToc: true
weight: 23
---

## Conectar el cerebro

Tienes OpenClaw instalado. Ahora necesita un cerebro — un LLM al que conectarse.

## Paso 1: Obtener una API key gratuita

**Google AI Studio (recomendado):** Ve a aistudio.google.com → Inicia sesión → "Get API key" → "Create API key". Copia la clave.

**NVIDIA NIM:** build.nvidia.com → Crea cuenta → Genera API key.

**Groq:** console.groq.com → Crea cuenta → API Keys → Create API Key.

## Paso 2: Configurar openclaw.json

```json
{
  "providers": {
    "google": {
      "baseUrl": "https://generativelanguage.googleapis.com/v1beta/openai",
      "apiKey": "TU_API_KEY_AQUÍ"
    }
  },
  "models": {
    "default": {
      "provider": "google",
      "model": "gemini-2.0-flash"
    }
  }
}
```

## Paso 3: Primer test

Ejecuta `openclaw` y escribe cualquier cosa. Si recibes una respuesta coherente, la conexión funciona.

## Múltiples providers

Puedes configurar varios providers y asignarlos a tareas diferentes — un modelo principal y uno rápido, por ejemplo.

## Seguridad

Nunca compartas `openclaw.json` (contiene tus API keys). Si subes configuración a GitHub, asegúrate de que esté en `.gitignore`.

## Conceptos clave de hoy

- **openclaw.json:** Archivo central de configuración
- **Provider block:** Define baseUrl + apiKey
- **Model block:** Apunta a un provider y especifica el modelo
- **Múltiples providers:** Puedes configurar varios y asignarlos a tareas diferentes

---

*Próxima lección: Conectar OpenClaw a Telegram — tu agente en el móvil.*
