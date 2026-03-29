---
title: "Lliçó 9: El mapa dels LLM — qui és qui al 2026"
date: 2026-04-10
slug: "llico-09-models-actuals"
draft: false
tags: ["models", "comparativa", "llm"]
categories: ["LLM"]
summary: "Coneix els principals models del moment, les empreses que hi ha darrere, i les diferències clau per triar el que et convé."
ShowToc: true
weight: 9
---

## Per què cal conèixer el mapa?

Quan comencis a configurar el teu propi agent, una de les primeres decisions serà: quin model uso? Hi ha desenes de models disponibles i cada setmana en surten de nous. Tenir un mapa mental clar t'ajudarà a triar amb criteri en lloc de triar a cegues.

## Els grans: empreses i models

### OpenAI — El pioner comercial

OpenAI va llançar ChatGPT i va encendre la revolució. Els seus models de la família **GPT** són els més coneguts del mercat.

OpenAI se centra en ser el més potent i el primer en noves capacitats. Té la base d'usuaris més gran i l'ecosistema de desenvolupadors més madur. Com a contrapartida, és un dels providers més cars i els seus models són completament tancats.

### Anthropic — Seguretat i utilitat

Anthropic, fundada per antics membres d'OpenAI, crea la família de models **Claude**. La seva filosofia és construir IA potent però segura — amb molt d'èmfasi en seguir instruccions correctament, ser honest sobre les limitacions, i evitar contingut nociu.

Claude destaca especialment en tasques que requereixen instruccions complexes, escriptura de qualitat, i anàlisi de documents llargs (amb un context window de 200K tokens). Per a molts desenvolupadors i usuaris avançats, Claude és el model preferit per la qualitat de les seves respostes.

### Google — L'ecosistema integrat

Google competeix amb la família **Gemini**. L'avantatge de Google és la integració amb el seu ecosistema: Gmail, Google Docs, Google Search, Android. Gemini pot accedir a les teves dades de Google de manera nativa.

Google també ha sigut pioner en la recerca que va fer possibles els LLM — el paper "Attention Is All You Need" (Transformers) va sortir de Google. Irònicament, van trigar a capitalitzar-ho comercialment.

### Meta — El líder open source

Meta (Facebook) ha pres un camí diferent: publica els seus models **LLaMA** com a open source. Qualsevol persona o empresa pot descarregar-los, usar-los i modificar-los.

Aquesta estratègia ha accelerat enormement la innovació. La comunitat open source ha creat centenars de variants de LLaMA optimitzades per a tasques específiques, idiomes concrets o hardware limitat. Si vols executar un model al teu ordinador sense pagar per token, probablement faràs servir un model basat en LLaMA o els seus derivats.

### Mistral — L'alternativa europea

Mistral és una empresa francesa que ha demostrat que es poden fer models competitius des d'Europa. Els seus models destaquen per la seva eficiència — ofereixen bon rendiment amb mides relativament petites.

Mistral publica tant models oberts com models comercials. Els seus models oberts (com Mistral 7B) han sigut molt populars per a ús local.

### Models xinesos — La innovació global

Empreses xineses han emergit amb força. **DeepSeek** va sacsejar el mercat amb models que rivalizaven amb els millors occidentals. **Qwen** (Alibaba) i **Kimi** (Moonshot AI) ofereixen models potents, molts d'ells open source.

Aquests models demostren que la innovació en IA és global i que la competència beneficia tothom.

## Models oberts que pots executar tu

Si vols executar un model al teu ordinador (amb Ollama, que veurem a la Setmana 3), aquestes són les famílies més populars:

**LLaMA (Meta):** La referència. Models de 8B a 405B paràmetres. El de 8B funciona en la majoria d'ordinadors moderns amb 16GB de RAM.

**Mistral / Mixtral:** Models eficients que donen molt bon rendiment per la seva mida. Mixtral usa una arquitectura "Mixture of Experts" que és més eficient.

**Qwen (Alibaba):** Bons models multilingües. Qwen2.5 és especialment competent en idiomes no-anglesos.

**Gemma (Google):** Models petits i eficients que Google publica com a open source. Ideals per a tasques lleugeres.

**Phi (Microsoft):** Models petits (3-4B paràmetres) sorprenentment capaços. Demostren que la mida no ho és tot.

## Com triar un model?

La tria depèn de quatre factors:

**1. Tasca:** Per a conversa general i raonament complex, els models grans (Claude, GPT) són superiors. Per a tasques específiques i repetitives, un model petit pot ser suficient i molt més barat.

**2. Pressupost:** Els models comercials cobren per token. Els models oberts locals tenen cost zero per ús, però necessites hardware.

**3. Privacitat:** Si les teves dades són sensibles, un model local garanteix que res surt del teu ordinador. Amb un model comercial, les teves dades passen pels servidors de l'empresa.

**4. Qualitat vs velocitat:** Els models grans són més precisos però més lents. Els models petits són més ràpids i barats, però poden fer més errors.

No hi ha un "millor model" universal — hi ha el millor model **per al teu cas d'ús**.

## Els rànquings: on comparar

Si vols veure com es comparen els models objectivament:

**Chatbot Arena** (lmsys.org): Rànquing basat en votacions humanes. Les persones comparen respostes de dos models anònims i trien la millor. És considerat el rànquing més fiable perquè reflecteix preferències reals d'usuaris.

**Artificial Analysis** (artificialanalysis.ai): Compara models en velocitat, preu i qualitat. Molt útil per entendre el cost real de cada opció.

**Open LLM Leaderboard** (Hugging Face): Rànquing de models oberts avaluats en benchmarks estandarditzats.

## El paisatge canvia ràpid

Un avís important: aquest mapa caduca ràpid. Cada pocs mesos apareixen models nous que canvien l'equilibri. El que avui és el millor model open source potser en tres mesos serà el segon o tercer.

Per això és més important entendre els **criteris** de tria (tasca, pressupost, privacitat, qualitat) que memoritzar noms de models. Els criteris són estables; els models, no.

## Conceptes clau d'avui

- **Models tancats (GPT, Claude, Gemini):** Més potents, accés via API, pagament per token
- **Models oberts (LLaMA, Mistral, Qwen):** Descarregables, executables localment, cost zero per ús
- **Chatbot Arena:** Rànquing de models basat en votacions humanes
- **No hi ha "millor model":** Hi ha el millor model per al teu cas d'ús, pressupost i necessitats

---

*Propera lliçó: El teu primer prompt — com parlar amb un LLM.*
