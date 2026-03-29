---
title: "Lliçó 26: Skills essencials — donar superpoderes al teu agent"
date: 2026-05-05
slug: "llico-26-skills-essencials"
draft: false
tags: ["openclaw", "skills", "configuracio"]
categories: ["OpenClaw"]
summary: "Les skills més útils per començar: cerca web, lectura de fitxers, i fonts d'informació en temps real."
ShowToc: true
weight: 26
---

## Setmana 6: posar l'agent a treballar

Tens un agent amb cervell (model), personalitat (system prompt), i canal de comunicació (Telegram). Ara li donem superpoderes amb skills.

## Instal·lar skills des de Clawhub

Clawhub.ai és el directori de skills per a OpenClaw. Per instal·lar una skill:

```
openclaw skill install nom-de-la-skill
```

Les skills s'instal·len a `~/.openclaw/skills/` (globals) o a `~/.openclaw/workspace/skills/` (per workspace). Les globals estan disponibles per a tots els workspaces.

## Les 5 skills essencials per començar

### 1. Cerca web

Sense cerca web, el teu agent està limitat al que sap del seu entrenament. Amb cerca web, pot respondre preguntes sobre actualitat, buscar preus, trobar informació específica.

Hi ha diverses opcions:

**Tavily:** Cercador dissenyat per a agents d'IA. Resultats nets i rellevants. Requereix API key (tier gratuït disponible).

**DuckDuckGo:** Cerca gratuïta sense necessitat d'API key. Menys precís que Tavily però funcional.

**SearXNG:** Metacercador que pots hostejar tu mateix. Privacitat total, sense límits. Més complex d'instal·lar però molt potent.

Per començar, Tavily o DuckDuckGo són les opcions més fàcils.

### 2. Lectura d'URLs (web fetch)

Complementària a la cerca web. Mentre la cerca et dona resultats breus, el web fetch obre una URL i n'extreu el contingut complet. Útil per a:

- Llegir articles sencers
- Extreure informació d'una pàgina específica
- Processar documentació tècnica

### 3. Lectura de fitxers

Permet a l'agent processar documents que li enviïs per Telegram: PDFs, fitxers de text, fulls de càlcul. Essencial si vols que l'agent t'ajudi amb documents de feina.

### 4. Reddit (readonly)

Reddit és una font excel·lent d'informació i opinions. La skill de Reddit permet a l'agent buscar discussions, llegir comentaris, i extreure informació de subreddits específics.

Molt útil per a preguntes del tipus "quina experiència té la gent amb X?" o "quines alternatives hi ha a Y?".

### 5. Hacker News

Per a contingut tècnic i de startups, Hacker News és una font de referència. L'agent pot buscar les notícies més recents, llegir discussions, i trobar enllaços rellevants.

## Configurar skills

Cada skill pot requerir configuració addicional al `openclaw.json`. Per exemple, Tavily necessita una API key:

```json
{
  "skills": {
    "tavily": {
      "apiKey": "LA_TEVA_KEY_TAVILY"
    }
  }
}
```

Consulta la documentació de cada skill a Clawhub per saber quina configuració necessita.

## Skills globals vs skills de workspace

**Skills globals** (`~/.openclaw/skills/`): Disponibles per a tots els workspaces. Ideals per a skills que sempre vols tenir (cerca web, lectura de fitxers).

**Skills de workspace** (`~/.openclaw/workspace/skills/`): Només disponibles per al workspace actiu. Ideals per a skills específiques d'un projecte.

## Provar les skills

Després d'instal·lar una skill, testa-la:

- "Quines notícies hi ha avui sobre IA?" → Ha d'usar la cerca web
- "Llegeix aquest article: [URL]" → Ha d'usar el web fetch
- "Què diu la gent a Reddit sobre OpenClaw?" → Ha d'usar la skill de Reddit

Si l'agent no usa la skill, potser el model no sap que la té. Revisa que la skill estigui correctament instal·lada i configurada.

## Conceptes clau d'avui

- **Clawhub.ai:** Directori de skills per a OpenClaw
- **Skills essencials:** Cerca web, lectura d'URLs, lectura de fitxers, Reddit, Hacker News
- **Skills globals vs workspace:** Globals per a ús general, workspace per a projectes específics
- **Cada skill pot necessitar configuració** (API keys, paràmetres) al openclaw.json

---

*Propera lliçó: Automatitzacions — que l'agent treballi sol amb cron jobs.*
