---
title: "Lliçó 13: Gratuït vs de pagament — on puc usar IA sense pagar?"
date: 2026-04-16
slug: "llico-13-models-gratuits-vs-pagament"
draft: false
tags: ["cost", "gratuit", "ollama", "providers"]
categories: ["Infraestructura"]
summary: "Mapeig de les opcions gratuïtes reals per usar IA: des de chats web fins a models locals al teu ordinador."
ShowToc: true
weight: 13
---

## El mite: "la IA és cara"

Una de les barreres d'entrada més comunes és la percepció que usar IA costa diners. I sí, els millors models comercials tenen un cost. Però hi ha un ventall enorme d'opcions gratuïtes que permeten fer coses molt interessants sense gastar un cèntim.

Vegem totes les opcions, de menys tècnica a més tècnica.

## Nivell 1: Chats web gratuïts

La manera més fàcil d'usar IA gratis és a través de les interfícies web dels grans models:

**ChatGPT (OpenAI):** La versió gratuïta dona accés a GPT amb un límit de missatges per hora. Suficient per a ús personal ocasional.

**Claude (Anthropic):** Claude.ai ofereix un tier gratuït amb accés al model, també amb límits de missatges.

**Gemini (Google):** Google AI Studio permet usar Gemini gratis. Si tens compte de Google, pots accedir-hi directament.

**Limitacions:** Aquests tiers gratuïts no donen accés a l'API. Pots xatejar al web, però no pots connectar un agent. Per a un agent, necessites API.

## Nivell 2: APIs amb tier gratuït

Alguns providers ofereixen APIs gratuïtes amb límits d'ús:

**Google AI Studio:** Ofereix accés gratuït a l'API de Gemini amb límits generosos. És una de les millors opcions per començar sense pagar.

**NVIDIA NIM:** Proporciona accés a diversos models (inclòs Kimi K2.5 i altres) amb un tier gratuït. Té límits de velocitat (unes 40 peticions per minut) però és funcional per a agents amb ús moderat.

**Groq:** Ofereix un tier gratuït amb velocitat impressionant. Ideal per a proves i agents amb poc volum.

**Mistral:** La seva plataforma ofereix accés gratuït als models Mistral més petits.

**Limitacions:** Tots els tiers gratuïts tenen límits de peticions per minut/dia. Si el teu agent fa moltes peticions, et quedaràs sense quota. I els tiers gratuïts poden desaparèixer o canviar les condicions en qualsevol moment.

## Nivell 3: Models locals (cost zero per ús)

Aquí ve l'opció més potent per a pressupost zero: **executar un model al teu propi ordinador.**

Amb eines com **Ollama**, pots descarregar models oberts (LLaMA, Mistral, Qwen, Gemma, Phi) i executar-los localment. Un cop descarregat, l'ús és completament gratuït — no pagues per token, no hi ha límits, no depens d'internet.

**Requisits de hardware:**

Per a models petits (1-3B paràmetres): 8GB de RAM, qualsevol CPU modern. Respostes lentes però funcionals.

Per a models mitjans (7-8B paràmetres): 16GB de RAM, millor amb GPU dedicada. Respostes a velocitat acceptable per a ús interactiu.

Per a models grans (13-70B paràmetres): 32-64GB de RAM o GPU amb molta VRAM. Aquí ja parlem de hardware serios.

**Avantatges:** Zero cost, privacitat total (les dades no surten del teu ordinador), funciona sense internet.

**Inconvenients:** Necessites hardware decent, els models locals són menys potents que els millors models comercials, i la velocitat depèn del teu hardware.

## La combinació intel·ligent

La majoria de gent que monta agents combina diverses opcions:

**Model car per a decisions importants:** Claude o GPT per a tasques que requereixen la màxima qualitat (anàlisi complexa, escriptura important, raonament difícil).

**Model gratuït per a volum:** NVIDIA NIM o un model local per a tasques rutinàries i repetitives (resums, traduccions, classificació).

Aquesta estratègia permet tenir un agent potent sense arruïnar-se. Les tasques simples les fa el model barat, i les complexes les fa el model bo.

## Què pagues exactament?

Quan pagues per usar un LLM via API, pagues per **tokens processats**:

**Tokens d'entrada:** Cada paraula del teu missatge, system prompt, historial de conversa i documents adjunts.

**Tokens de sortida:** Cada paraula de la resposta del model.

El preu es calcula per milió de tokens. Un milió de tokens en anglès són unes 750.000 paraules — molt de text. Per a la majoria d'usuaris personals, la factura mensual d'un agent amb ús moderat és de pocs euros.

El que dispara el cost és l'automatització massiva: si tens un agent que processa centenars de peticions al dia amb context windows grans, la factura creix ràpid. Per això és important ser eficient amb els tokens.

## Resum pràctic

Per a algú que comença i vol gastar zero:

1. **Comença amb Google AI Studio** (API gratuïta de Gemini) per al teu primer agent
2. **Instal·la Ollama** amb un model de 7-8B per a experimentar localment
3. **Registra't a NVIDIA NIM** com a provider de reserva

Amb aquestes tres opcions tens un agent funcional sense pagar res. Més endavant, si necessites més qualitat o més volum, pots afegir un model comercial.

## Conceptes clau d'avui

- **Tiers gratuïts d'API:** Google AI Studio, NVIDIA NIM, Groq — accés gratuït amb límits
- **Models locals (Ollama):** Descarregues el model i l'executes al teu hardware. Cost zero per ús
- **Combinació intel·ligent:** Model car per a qualitat + model barat/gratuït per a volum
- **El cost és per token:** Pagues per cada paraula processada, no per subscripció

---

*Propera lliçó: Models locals — executar un LLM al teu ordinador amb Ollama.*
