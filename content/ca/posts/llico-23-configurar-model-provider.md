---
title: "Lliçó 23: Configurar el teu primer model i provider"
date: 2026-04-30
slug: "llico-23-configurar-model-provider"
draft: false
tags: ["openclaw", "configuracio", "provider", "api-key"]
categories: ["OpenClaw"]
summary: "Connectem OpenClaw a un LLM: triar model, obtenir API key gratuïta, i configurar openclaw.json."
ShowToc: true
weight: 23
---

## Connectar el cervell

Tens OpenClaw instal·lat. Ara necessita un cervell — un LLM al qual connectar-se. Avui configuraràs la connexió entre OpenClaw i un model, pas a pas.

## Pas 1: Obtenir una API key gratuïta

Comencem amb una opció gratuïta perquè puguis provar sense gastar res. Tens diverses opcions:

**Google AI Studio (recomanat per començar):**
1. Ves a aistudio.google.com
2. Inicia sessió amb el teu compte de Google
3. Clica "Get API key" → "Create API key"
4. Copia la clau (comença per `AIza...`)

**NVIDIA NIM:**
1. Ves a build.nvidia.com
2. Crea un compte gratuït
3. Genera una API key
4. Escull un model (per exemple, Kimi K2.5)

**Groq:**
1. Ves a console.groq.com
2. Crea un compte gratuït
3. API Keys → Create API Key
4. Copia la clau

Qualsevol d'aquestes tres opcions funciona. Per a aquest tutorial usarem Google AI Studio perquè el tier gratuït és el més generós.

## Pas 2: Configurar openclaw.json

Obre el fitxer de configuració:
```
nano ~/.openclaw/openclaw.json
```

La configuració bàsica per a Google AI Studio seria:

```json
{
  "providers": {
    "google": {
      "baseUrl": "https://generativelanguage.googleapis.com/v1beta/openai",
      "apiKey": "LA_TEVA_API_KEY_AQUÍ"
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

Substitueix `LA_TEVA_API_KEY_AQUÍ` per la clau que has obtingut al Pas 1.

Per a NVIDIA NIM, la configuració seria:

```json
{
  "providers": {
    "nvidia-nim": {
      "baseUrl": "https://integrate.api.nvidia.com/v1",
      "apiKey": "LA_TEVA_API_KEY_AQUÍ"
    }
  },
  "models": {
    "default": {
      "provider": "nvidia-nim",
      "model": "moonshotai/kimi-k2.5"
    }
  }
}
```

## Pas 3: Primer test

Executa OpenClaw:
```
openclaw
```

Escriu qualsevol cosa, per exemple: "Hola, qui ets?"

Si reps una resposta coherent, la connexió funciona. Has muntat el teu primer agent.

## Entendre l'estructura del JSON

El fitxer `openclaw.json` té dues parts principals:

**providers:** Defineix on es connecta l'agent. Cada provider necessita un `baseUrl` (on enviar les peticions) i un `apiKey` (qui ets). Pots tenir múltiples providers configurats.

**models:** Defineix quins models usa l'agent. El `default` és el model principal. Cada model apunta a un provider i especifica quin model concret usar.

Aquesta separació entre provider i model és molt útil: si vols canviar de model, només canvies el camp `model`. Si vols canviar de provider (per exemple, de Google a Groq), canvies el `provider` i el `baseUrl`.

## Múltiples providers

Pots configurar diversos providers i assignar-los a tasques diferents:

```json
{
  "providers": {
    "google": {
      "baseUrl": "https://generativelanguage.googleapis.com/v1beta/openai",
      "apiKey": "KEY_GOOGLE"
    },
    "groq": {
      "baseUrl": "https://api.groq.com/openai/v1",
      "apiKey": "KEY_GROQ"
    }
  },
  "models": {
    "default": {
      "provider": "google",
      "model": "gemini-2.0-flash"
    },
    "fast": {
      "provider": "groq",
      "model": "llama-3.1-8b-instant"
    }
  }
}
```

Això et permet tenir un model principal (Google) i un de ràpid (Groq) per a tasques on la velocitat és prioritària.

## Seguretat de les API keys

Recorda les regles d'or:

- Mai comparteixis el fitxer `openclaw.json` amb ningú (conté les teves API keys)
- Si puges configuració a GitHub, assegura't que `openclaw.json` estigui al `.gitignore`
- Si creus que una key s'ha compromès, revoca-la immediatament al panell del provider

## Conceptes clau d'avui

- **openclaw.json:** Fitxer central de configuració — providers, models, i comportament de l'agent
- **Provider block:** Defineix baseUrl (on connectar) + apiKey (autenticació)
- **Model block:** Apunta a un provider i especifica el model concret
- **Múltiples providers:** Pots configurar diversos i assignar-los a tasques diferents

---

*Propera lliçó: Connectar OpenClaw a Telegram — el teu agent al mòbil.*
