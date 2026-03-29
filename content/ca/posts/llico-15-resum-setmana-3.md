---
title: "Lliçó 15: Resum — el mapa complet per accedir a un LLM"
date: 2026-04-18
slug: "llico-15-resum-setmana-3"
draft: false
tags: ["resum", "comparativa", "decisio"]
categories: ["Infraestructura"]
summary: "Consolidem tot l'après amb un diagrama mental clar, una taula comparativa, i un arbre de decisió per triar model i provider."
ShowToc: true
weight: 15
---

## Mig curs: on som?

Portem tres setmanes i ja tens les bases sòlides. Fem memòria:

**Setmana 1** vas entendre què és la IA, d'on ve, i que ja la fas servir cada dia. **Setmana 2** vas descobrir com funcionen els LLM: tokens, context window, models, prompts. **Setmana 3** has après com accedir-hi: providers, APIs, opcions gratuïtes, models locals.

Avui consolidem tot amb una visió global.

## El diagrama complet

Quan fas servir un LLM, el flux sempre és el mateix:

```
TU (humà o agent)
    │
    ▼
INTERFÍCIE (web, Telegram, app, terminal)
    │
    ▼
FRAMEWORK (OpenClaw, LangChain, o directament l'API)
    │
    ▼
PROVIDER (OpenAI, Anthropic, Groq, NVIDIA NIM, Ollama local)
    │
    ▼
MODEL (GPT, Claude, LLaMA, Mistral, Qwen...)
    │
    ▼
RESPOSTA (text generat token per token)
```

Cada capa és independent de les altres. Pots canviar de provider sense canviar de framework. Pots canviar de model sense canviar d'interfície. Aquesta modularitat és el que fa que l'ecosistema sigui tan flexible.

## Taula comparativa de providers

| Provider | Models | Preu | Velocitat | Tier gratuït | Ideal per a |
|----------|--------|------|-----------|--------------|-------------|
| OpenAI | GPT-4, GPT-5 | Alt | Bona | Limitat (web) | Màxima qualitat, ecosistema madur |
| Anthropic | Claude | Alt | Bona | Limitat (web) | Instruccions complexes, documents llargs |
| Google AI | Gemini | Mig-baix | Bona | Sí (API) | Començar gratis, integració Google |
| Groq | LLaMA, Mistral | Baix | Molt ràpida | Sí (API) | Velocitat, preus baixos |
| NVIDIA NIM | Kimi, LLaMA | Baix | Acceptable | Sí (API) | Agent gratuït amb ús moderat |
| Together | Molts oberts | Baix | Variable | Sí (limitat) | Varietat de models |
| OpenRouter | Tots | Variable | Variable | No | Canviar de model fàcilment |
| Ollama (local) | Tots els oberts | Zero | Depèn del hardware | N/A | Privacitat, cost zero, sense internet |

## Arbre de decisió: quin model i provider triar?

**Pregunta 1: Tens pressupost?**

Si **no** → Ollama local (si tens 16GB+ RAM) o Google AI Studio / NVIDIA NIM (si prefereixes cloud).

Si **sí** → Continua.

**Pregunta 2: Què necessites?**

Si necessites **la màxima qualitat** → Claude (Anthropic) o GPT (OpenAI). Tria Claude per a instruccions complexes i documents llargs. Tria GPT si necessites l'ecosistema més ampli.

Si necessites **velocitat** → Groq.

Si necessites **privacitat** → Ollama amb un model local.

Si necessites **volum barat** → Provider d'inferència (Groq, Together, NVIDIA NIM) amb un model obert.

**Pregunta 3: Quant de complex és el teu ús?**

Si és **simple** (preguntes bàsiques, resums, traduccions) → Un model de 7-8B (local o cloud) és suficient.

Si és **intermedi** (converses llargues, anàlisi, codi) → Model de 30-70B o un model comercial mitjà.

Si és **avançat** (raonament complex, tasques crítiques) → Models punta: Claude Opus, GPT-5, o similars.

## Exercici pràctic suggerit

Si vols posar en pràctica el que has après fins ara, aquí tens un exercici:

**Prova tres models gratuïts i compara respostes.** Ves a:

1. **ChatGPT** (chat.openai.com) — versió gratuïta
2. **Claude** (claude.ai) — versió gratuïta
3. **Google AI Studio** (aistudio.google.com) — Gemini gratuït

Fes la **mateixa pregunta** als tres. Per exemple: "Explica'm com funciona el wifi de casa meva com si tingués 12 anys." Compara les respostes: quin és més clar? Quin és més precís? Quin to t'agrada més?

Aquesta comparació et donarà intuïció sobre les diferències entre models — una cosa que cap lliçó teòrica pot substituir.

## Glossari de la Setmana 3

- **Provider:** Qui et dona accés al model (directe o d'inferència)
- **API:** Interfície de comunicació entre programes (el teu agent i el model)
- **API key:** Clau secreta que t'identifica davant del provider
- **Token (cost):** Unitat de facturació — pagues per tokens processats
- **Ollama:** Eina per executar models locals fàcilment
- **Quantització:** Reduir la mida del model per fer-lo més eficient
- **Model obert:** Descarregable i executable al teu hardware
- **Model tancat:** Accessible només via API del creador
- **OpenRouter:** Agregador de models i providers
- **VRAM:** Memòria de la GPU que determina la mida del model que pots executar

## La setmana que ve

Amb tot aquest coneixement base, estem preparats per al gran salt: **els agents d'IA**. No simples chatbots que responen preguntes, sinó programes que executen tasques, usen eines, i treballen de forma autònoma.

La Setmana 4 canvia de marxa.

## Conceptes clau d'avui

- **El flux complet:** Tu → Interfície → Framework → Provider → Model → Resposta
- **Cada capa és intercanviable:** Pots canviar de model, provider o framework independentment
- **La tria depèn del cas d'ús:** No hi ha "millor" universal — hi ha "millor per a tu"
- **La combinació és la clau:** Model car per a qualitat + model barat per a volum

---

*Propera lliçó: Comencem la Setmana 4 — Què és un agent d'IA? Més que un chatbot.*
