---
title: "Lliçó 7: Tokens — com un LLM 'llegeix' el text"
date: 2026-04-08
slug: "llico-07-tokens-i-tokenitzacio"
draft: false
tags: ["tokens", "tokenitzacio", "llm"]
categories: ["LLM"]
summary: "Què són els tokens, per què no són paraules, i per què importa entendre'ls quan parles de cost, velocitat i límits."
ShowToc: true
weight: 7
---

## Per què parlem de tokens?

Si has llegit sobre IA, segur que has vist frases com "el model admet 128K tokens" o "el preu és de $3 per milió de tokens". Però què és exactament un token?

Entendre els tokens és pràctic i important perquè afecten tres coses que et preocuparan quan usis un LLM: **quant costa**, **quant de text pot processar**, i **quant de ràpid respon**.

## Un token NO és una paraula

Aquí ve la primera sorpresa: un LLM no llegeix paraules. Llegeix **tokens** — trossos de text que poden ser paraules senceres, parts de paraules, o fins i tot caràcters individuals.

El procés de convertir text en tokens es diu **tokenització**, i el fa un programa anomenat **tokenitzador** abans que el text arribi al model.

Vegem exemples en anglès (on la tokenització és més eficient):

- "Hello" → 1 token (paraula comuna, va sencera)
- "unhappiness" → 3 tokens: "un" + "happiness" → en realitat és "un" + "happi" + "ness"
- "ChatGPT" → 2-3 tokens: "Chat" + "G" + "PT" o similar

I en català:

- "Hola" → 1 token (paraula curta i comuna)
- "Intel·ligència" → 3-4 tokens (paraula llarga i poc comuna en dades d'entrenament en anglès)
- "Desenvolupament" → 3-5 tokens

## Per què funciona així?

La raó és eficiència. Imagina que el model hagués d'aprendre cada paraula de cada idioma com una unitat independent. Necessitaria un vocabulari de milions d'entrades.

En canvi, amb la tokenització, el model treballa amb un vocabulari de 30.000-100.000 tokens que pot combinar per representar qualsevol text en qualsevol idioma. Les paraules comunes en anglès (que és l'idioma dominant en les dades d'entrenament) tendeixen a ser un sol token. Les paraules menys comunes o d'altres idiomes es divideixen en trossos.

Pensa-ho com les peces de Lego: amb un conjunt limitat de peces pots construir qualsevol cosa. Les peces més grans (tokens de paraules senceres) cobreixen els casos comuns ràpidament. Les peces petites (tokens de fragments) permeten construir qualsevol paraula inusual.

## Per què els idiomes no-anglesos "gasten" més tokens?

Això és important i té conseqüències pràctiques: escriure en català, castellà, àrab, japonès o qualsevol idioma que no sigui anglès consumeix **més tokens** per expressar la mateixa idea.

Per què? Perquè el tokenitzador s'ha entrenat majoritàriament amb text en anglès. Les paraules angleses comunes s'han convertit en tokens eficients (1 paraula = 1 token). Les paraules en altres idiomes sovint es divideixen en fragments perquè apareixen menys en les dades d'entrenament.

En la pràctica, un text en català pot consumir entre un 20% i un 50% més de tokens que el mateix text en anglès. Això vol dir que et costa més diners processar-lo i que "cap menys text" dins la finestra de context del model.

## Tokens d'entrada vs tokens de sortida

Quan interactues amb un LLM, hi ha dos fluxos de tokens:

**Tokens d'entrada (input):** El text que tu envies al model — la teva pregunta, instruccions, context, documents adjunts. Tot això es tokenitza i entra al model.

**Tokens de sortida (output):** El text que el model genera com a resposta. Cada paraula de la resposta és un o més tokens generats seqüencialment.

La majoria de providers cobren ambdós, però amb preus diferents. Normalment, els tokens de sortida són més cars que els d'entrada (perquè generar requereix més càlcul que llegir).

## El preu per token

Quan veus un preu com "$3 per milió de tokens d'entrada", què significa en termes pràctics?

Una regla ràpida per a l'anglès: **1 token ≈ 0,75 paraules** (o al revés, **1 paraula ≈ 1,3 tokens**). Per al català, compta **1 paraula ≈ 1,5-2 tokens**.

Això vol dir que un milió de tokens d'entrada en anglès són unes 750.000 paraules — l'equivalent a uns 10 llibres. A $3 per milió de tokens, processar 10 llibres d'entrada costa $3. Barat? Depèn de l'ús que en facis. Si el teu agent processa centenars de peticions al dia, els tokens s'acumulen ràpid.

## Eines per comptar tokens

No has d'estimar a ull — hi ha eines gratuïtes per comptar tokens exactament:

**OpenAI Tokenizer** (platform.openai.com/tokenizer): Enganxa un text i et mostra quants tokens té i com es divideix. És per als models d'OpenAI, però dona una idea general.

**Tiktokenizer** (tiktokenizer.vercel.app): Una interfície visual on veus els tokens amb colors diferents, molt útil per entendre com es divideix el text.

No tots els models usen el mateix tokenitzador — Claude, GPT i Gemini poden tokenitzar el mateix text de manera lleugerament diferent. Però les diferències no són dràstiques.

## Per què tot això importa per a tu?

Si estàs aquí perquè vols muntar un agent amb OpenClaw, els tokens seran una part constant del teu dia a dia:

1. **Cost:** Cada interacció amb el teu agent consumeix tokens. Entendre quants en gastes t'ajuda a controlar la factura.

2. **Límit de context:** El model té un límit de tokens que pot processar d'un cop (la "finestra de context" que veurem a la lliçó següent). Si el superes, el model comença a "oblidar" informació.

3. **Velocitat:** Generar més tokens de sortida = més temps de resposta. Un model que genera una resposta de 500 tokens és més ràpid que un que en genera 2000.

4. **Optimització:** Escriure prompts eficients (clars i concisos) no és només bona pràctica — estalvia tokens i diners.

## Conceptes clau d'avui

- **Token:** La unitat mínima de text que processa un LLM — pot ser una paraula, part d'una paraula, o un caràcter
- **Tokenització:** El procés de convertir text en tokens
- **Tokenitzador:** El programa que fa la tokenització (cada família de models té el seu)
- **Tokens d'entrada vs sortida:** L'entrada és el que envies, la sortida és el que el model genera
- **Regla ràpida:** 1 paraula en anglès ≈ 1,3 tokens / 1 paraula en català ≈ 1,5-2 tokens

---

*Propera lliçó: La finestra de context — la memòria a curt termini d'un LLM.*
