---
title: "Lliçó 29: Seguretat i privacitat — el teu agent al món real"
date: 2026-05-08
slug: "llico-29-seguretat-privacitat"
draft: false
tags: ["seguretat", "privacitat", "bones-practiques"]
categories: ["OpenClaw"]
summary: "Bones pràctiques de seguretat per no exposar dades ni API keys, i com protegir el teu agent."
ShowToc: true
weight: 29
---

## Per què parlar de seguretat?

Quan tens un agent d'IA funcionant, hi ha dades sensibles en joc: les teves API keys (que costen diners), les teves converses (que contenen informació personal), i les dades que l'agent processa. Unes bones pràctiques bàsiques t'evitaran problemes.

No cal ser expert en ciberseguretat. Amb unes quantes regles senzilles estaràs protegit contra els riscos més comuns.

## Regla 1: Protegeix les API keys

Les API keys són els diners. Si algú hi accedeix, pot fer peticions al teu compte i la factura serà teva.

**Mai les posis al codi que puges a GitHub.** Hi ha bots que escanegen repositoris públics buscant API keys exposades. Les troben i les exploten en minuts.

**Usa variables d'entorn.** En lloc de posar la key directament al `openclaw.json`, pots usar variables d'entorn del sistema operatiu. Així la key no queda escrita en cap fitxer.

**Revoca-les si sospites.** Si creus que una key s'ha pogut filtrar, ves al panell del provider, elimina-la, i crea'n una de nova. Procés de 2 minuts que et pot estalviar diners.

**Una key per servei.** No reutilitzis la mateixa key per a tot. Si una es compromet, només afecta un servei.

## Regla 2: Restringeix l'accés al bot de Telegram

Si el teu bot de Telegram està obert a tothom, qualsevol persona que descobreixi el username del bot pot parlar-hi — i gastar els teus tokens.

**Configura `allowedUsers` sempre.** Posa els IDs de Telegram de les persones autoritzades i ningú més podrà usar el bot.

**No comparteixis el token del bot.** Amb el token, qualsevol pot controlar el bot — enviar missatges, canviar la configuració, etc.

## Regla 3: Entén què envies al provider

Quan el teu agent processa una petició, el text complet s'envia als servidors del provider. Això inclou:

- El teu missatge
- El system prompt
- L'historial de conversa
- Qualsevol document o context adjunt

Si treballes amb informació sensible (dades de clients, informació financera, documents confidencials), tingues en compte que aquesta informació passa pels servidors del provider.

**Opcions per a informació sensible:**

**Model local:** Amb Ollama, les dades no surten del teu ordinador. La solució més segura per a dades confidencials.

**Revisa les polítiques del provider:** Alguns providers (com Anthropic amb l'API) no entrenen els seus models amb les dades dels usuaris. Altres sí. Llegeix les condicions d'ús.

**No envies més del necessari.** Si necessites que l'agent processi un document, envia només la part rellevant, no el document sencer.

## Regla 4: Còpies de seguretat

La configuració del teu agent és el resultat de hores de treball: system prompt, configuració de providers, skills personalitzades.

**Fes backup de `~/.openclaw/` regularment.** Si el disc falla o fas un canvi que trenca alguna cosa, poder recuperar la configuració anterior és inavaluable.

**Guarda els backups en un lloc segur.** Recorda que el directori conté API keys — no el pugis a GitHub públic sense treure les keys primer.

## Regla 5: Actualitza regularment

OpenClaw, Node.js, i les skills reben actualitzacions que sovint inclouen correccions de seguretat.

```
npm update -g openclaw
```

No cal actualitzar cada dia, però fer-ho cada poques setmanes és bona pràctica.

## Regla 6: Monitoritza l'ús

Especialment al principi, revisa:

- El consum de tokens al panell del provider — busca pics inesperats que podrien indicar ús no autoritzat
- Els logs d'OpenClaw — per veure què fa l'agent
- Les converses — per assegurar-te que l'agent es comporta com esperes

## Resum de bones pràctiques

1. API keys en variables d'entorn, mai al codi
2. `allowedUsers` sempre configurat al bot de Telegram
3. Model local per a dades sensibles
4. Backups regulars de `~/.openclaw/`
5. Actualitzar OpenClaw periòdicament
6. Monitoritzar consum de tokens

## Conceptes clau d'avui

- **API keys:** La peça més crítica — protegir-les és la prioritat número u
- **allowedUsers:** Restricció d'accés al bot de Telegram
- **Dades al provider:** Tot el que envies a l'API passa pels servidors del provider
- **Model local:** La solució més segura per a dades sensibles
- **Backups:** Còpies de seguretat de `~/.openclaw/` — la teva configuració val hores de treball

---

*Propera lliçó: I ara què? — Següents passos per seguir aprenent.*
