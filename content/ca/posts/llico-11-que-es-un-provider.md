---
title: "Lliçó 11: Què és un provider? Qui et dona accés als models"
date: 2026-04-14
slug: "llico-11-que-es-un-provider"
draft: false
tags: ["provider", "acces", "infraestructura"]
categories: ["Infraestructura"]
summary: "Entén la cadena model → provider → usuari, i per què el mateix model pot costar diferent segons on l'usis."
ShowToc: true
weight: 11
---

## Setmana 3: com accedir als models

Ja saps què és un LLM, com funciona, i quins models existeixen. Ara ve la pregunta pràctica: **com hi accedeixo?** No pots trucar a Anthropic i demanar que t'activin Claude. Necessites un intermediari — i això és un provider.

## Què és un provider?

Un **provider** és una empresa o servei que et dona accés a un model d'IA. És l'intermediari entre tu i el model.

Pensa en una analogia senzilla: el model és una pel·lícula. El provider és la plataforma on la mires — Netflix, HBO, Amazon Prime. La mateixa pel·lícula pot estar disponible a diverses plataformes, amb preus i condicions diferents. Amb els LLM passa exactament el mateix.

## Providers directes vs providers d'inferència

Hi ha dos tipus de providers, i entendre la diferència és important:

### Providers directes

Són les empreses que **creen** el model i te'l venen directament.

**OpenAI** ven accés als models GPT. Si vols usar GPT, pots anar directament a OpenAI. Ells han creat el model, l'executen als seus servidors, i et cobren per ús.

**Anthropic** ven accés a Claude. Mateixa idea — creadors i proveïdors del model.

**Google** ofereix Gemini a través de Google AI Studio i Google Cloud.

Amb un provider directe, tens la garantia que estàs usant el model "oficial", amb les últimes actualitzacions, i el suport de l'empresa creadora. Com a contrapartida, normalment és l'opció més cara.

### Providers d'inferència

Són empreses que **no creen** models, però els executen als seus servidors i te'ls ofereixen. Agafen models oberts (LLaMA, Mistral, Qwen) i els posen disponibles per a tothom.

**Groq** és conegut per la seva velocitat brutal. Executa models oberts en hardware especialitzat i ofereix respostes molt ràpides.

**Together AI** ofereix una gran varietat de models oberts amb preus competitius.

**NVIDIA NIM** proporciona accés a models a través de la infraestructura de NVIDIA, amb un tier gratuït.

**OpenRouter** és un agregador — un únic punt d'accés a desenes de models de diferents providers, tant oberts com tancats. Pots canviar de model simplement canviant un paràmetre.

L'avantatge dels providers d'inferència és el preu i la varietat. Poden oferir el mateix model (per exemple, LLaMA) a preus molt inferiors als de Meta directament, perquè competeixen entre ells. L'inconvenient és que no sempre tenen els models més recents o les últimes actualitzacions.

## Per què el preu varia?

El mateix model pot tenir preus molt diferents segons el provider. Per què?

**Hardware:** Cada provider usa hardware diferent. Groq usa xips especialitzats (LPU) que són molt ràpids però cars. Altres providers usen GPUs estàndard. El hardware afecta tant el preu com la velocitat.

**Escala:** Un provider gran que serveix milions de peticions pot oferir preus més baixos per economia d'escala.

**Marge comercial:** Cada provider decideix quin marge vol treure. Alguns competeixen en preu, altres en qualitat de servei.

**Optimitzacions:** Alguns providers apliquen tècniques de quantització (reduir la precisió del model per fer-lo més ràpid i barat) que poden afectar lleugerament la qualitat.

## La cadena completa

Quan parles amb un agent d'IA, la cadena és:

```
Tu → Agent (OpenClaw) → Provider (API) → Model (LLM) → Resposta
```

**Tu** escrius un missatge al Telegram. **L'agent** (OpenClaw) el processa i l'envia al **provider** a través de la seva **API**. El provider l'envia al **model**, que genera la resposta. La resposta fa el camí invers fins al teu Telegram.

Quan configures un agent amb OpenClaw, una de les primeres coses que fas és dir-li quin provider i quin model ha d'usar. És una decisió important perquè afecta el cost, la velocitat, la qualitat i la privacitat.

## Com triar un provider?

Quatre criteris bàsics:

**Cost:** Si el pressupost és zero, busca tiers gratuïts (NVIDIA NIM, Google AI Studio, Groq free). Si pots pagar, compara preus per milió de tokens entre providers.

**Velocitat (latència):** Si necessites respostes ràpides (un chatbot interactiu), la latència importa. Groq és el rei de la velocitat. Si és per tasques en segon pla (resums nocturns, per exemple), la latència no importa tant.

**Qualitat del model:** Si necessites el millor model possible, hauràs d'anar al provider directe (OpenAI per a GPT, Anthropic per a Claude). Si un model obert és suficient, els providers d'inferència ofereixen més opcions.

**Fiabilitat:** Els providers grans (OpenAI, Anthropic, Google) tenen infraestructura robusta amb alta disponibilitat. Providers petits o tiers gratuïts poden tenir talls, límits de velocitat, o temps d'espera.

## Conceptes clau d'avui

- **Provider:** Empresa o servei que et dona accés a un model d'IA
- **Provider directe:** El creador del model que te'l ven (OpenAI, Anthropic, Google)
- **Provider d'inferència:** Empresa que executa models oberts als seus servidors (Groq, Together, NVIDIA NIM)
- **OpenRouter:** Agregador que dona accés a múltiples models i providers des d'un sol punt
- **La cadena:** Tu → Agent → Provider (API) → Model → Resposta

---

*Propera lliçó: Què és una API? — La porta d'entrada als LLM.*
