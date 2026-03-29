---
title: "Lliçó 25: Donar personalitat al teu agent — el system prompt"
date: 2026-05-02
slug: "llico-25-personalitat-system-prompt"
draft: false
tags: ["openclaw", "system-prompt", "personalitat"]
categories: ["OpenClaw"]
summary: "Escriu un system prompt efectiu que defineixi com es comporta, parla i pensa el teu agent."
ShowToc: true
weight: 25
---

## El system prompt: l'ADN del teu agent

Si el model és el cervell i les eines són les mans, el **system prompt** és la **personalitat**. Defineix com es comporta l'agent: en quin idioma parla, quin to usa, quines regles segueix, què sap sobre tu, i com enfoca les respostes.

Dos agents amb el mateix model i les mateixes eines poden ser completament diferents si tenen system prompts diferents. Un pot ser formal i tècnic, l'altre informal i humorístic. El system prompt ho canvia tot.

## On es configura?

A OpenClaw, el system prompt és un fitxer Markdown a `~/.openclaw/workspace/system-prompt.md`. Simplement edites aquest fitxer i l'agent canvia de comportament immediatament (al proper missatge).

## Estructura d'un bon system prompt

No hi ha una fórmula única, però un system prompt efectiu sol incloure:

### 1. Identitat

Qui és l'agent? Quin rol té?

```
Ets un assistent personal especialitzat en tecnologia i productivitat.
Et dius Atlas. Ets directe, pràctic i no dones voltes innecessàries.
```

### 2. Comportament

Com ha de respondre? Quin to? Quines regles?

```
Respon sempre en català, amb termes tècnics en anglès quan sigui natural.
Sigues concís — prefereix respostes curtes i útils a respostes llargues i genèriques.
Si no saps alguna cosa, digues-ho clarament. No inventis.
```

### 3. Context

Què sap sobre tu? Quin és el context d'ús?

```
L'usuari és un professional d'IT que gestiona infraestructura.
Té experiència amb Linux, Docker, i sistemes cloud.
Prefereix solucions pràctiques i directes.
```

### 4. Límits

Què NO ha de fer l'agent?

```
No donis consells mèdics ni legals.
No generes contingut per a menors.
Si una petició és ambigua, demana aclariment abans d'actuar.
```

## Exemple complet

Aquí tens un system prompt complet per a un agent personal:

```markdown
# Identitat
Ets un assistent personal d'IA. Et dius Claw. Ets pràctic, directe, i tens
un to proper però professional.

# Idioma
Respon en català. Usa termes tècnics en anglès quan sigui natural
(no tradueixis "machine learning" a "aprenentatge automàtic" si sona forçat).

# Estil
- Sigues concís. Si pots dir-ho en 3 línies, no en facis 10.
- Usa exemples pràctics quan expliquis conceptes.
- Si l'usuari fa una pregunta simple, respon simplement.
  No donis context innecessari.

# Context de l'usuari
- Professional d'IT amb 20 anys d'experiència
- Gestiona infraestructura i servidors
- Interessat en IA, automatització i agents
- Prefereix solucions que funcionin sobre solucions "elegants"

# Regles
- Si no estàs segur d'alguna cosa, digues-ho
- Quan donguis comandes de terminal, explica breument què fan
- Si la pregunta és massa àmplia, demana aclariment
- No donis respostes genèriques copiades d'un manual
```

## Consells per a un bon system prompt

**Sigues específic.** "Sigues amable" és vague. "Respon amb un to proper, com si parlés amb un company de feina" és concret.

**Itera.** El primer system prompt no serà perfecte. Usa l'agent uns dies, identifica el que no t'agrada de les respostes, i ajusta el prompt. És un procés iteratiu.

**No l'omplis massa.** Un system prompt de 3000 paraules consumeix tokens a cada missatge. Sigues eficient — inclou el que és important i deixa fora el que el model ja fa bé per defecte.

**L'idioma del system prompt importa.** Si escrius el system prompt en anglès, el model tendirà a respondre en anglès. Escriu-lo en l'idioma en què vols les respostes, o especifica-ho explícitament.

**Testa amb preguntes variades.** Després de canviar el system prompt, fes-li preguntes de tipus molt diferents: tècniques, creatives, personals, ambigües. Assegura't que el comportament és coherent en tots els casos.

## Conceptes clau d'avui

- **System prompt:** Les instruccions permanents que defineixen la personalitat i comportament de l'agent
- **`~/.openclaw/workspace/system-prompt.md`:** On viu el system prompt a OpenClaw
- **Quatre parts:** Identitat + Comportament + Context + Límits
- **Iterar:** El system prompt es millora amb l'ús — no esperes que sigui perfecte al primer intent
- **Cada missatge el reenvia:** El system prompt s'envia al model amb cada petició, consumint tokens

---

*Propera lliçó: Comencem la Setmana 6 — Skills essencials per al teu agent.*
