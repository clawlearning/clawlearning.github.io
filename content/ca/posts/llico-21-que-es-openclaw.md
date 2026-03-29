---
title: "Lliçó 21: Què és OpenClaw i per què l'hem triat"
date: 2026-04-28
slug: "llico-21-que-es-openclaw"
draft: false
tags: ["openclaw", "introduccio"]
categories: ["OpenClaw"]
summary: "Presentem OpenClaw, la seva filosofia, els requisits mínims, i per què és ideal per començar."
ShowToc: true
weight: 21
---

## Setmana 5: mans a l'obra

Quatre setmanes de teoria. Ara toca practicar. Aquesta setmana muntaràs el teu primer agent d'IA funcional amb OpenClaw — des de zero fins a tenir un bot de Telegram que parli amb tu.

## Què és OpenClaw?

OpenClaw és un **framework de codi obert** per crear agents d'IA personals. Està dissenyat perquè qualsevol persona amb coneixements bàsics d'informàtica pugui muntar un agent sense programar.

La filosofia d'OpenClaw es resumeix en tres principis:

**Simple:** La configuració es fa amb un fitxer JSON. No cal escriure codi. Si saps editar un fitxer de text, saps configurar OpenClaw.

**Configurable:** Pots triar quin model usar, quin provider, quines skills activar, quina personalitat donar-li, i com ha de comportar-se. Tot sense tocar codi.

**Extensible:** Si necessites funcionalitats extres, pots afegir skills de la comunitat (Clawhub) o crear les teves pròpies.

## Per què OpenClaw i no un altre?

Hem vist a la Lliçó 20 que hi ha molts frameworks. Per què recomanem OpenClaw per començar?

**No requereix programació.** LangChain necessita Python. CrewAI necessita Python. OpenClaw es configura amb un fitxer JSON i comandes de terminal. Si saps navegar per carpetes i editar fitxers, ja en tens prou.

**Telegram natiu.** La majoria de la gent vol un agent al mòbil. OpenClaw inclou integració amb Telegram de sèrie — no cal instal·lar res extra.

**Skills preconfecionades.** Clawhub.ai ofereix skills llestos per instal·lar: cerca web, lectura de fitxers, Reddit, Hacker News... Un sol comanda i l'agent ja ho pot fer servir.

**Community-driven.** OpenClaw és un projecte de comunitat en creixement actiu. Constantment apareixen noves skills, millores, i funcionalitats.

## Requisits mínims

Per fer funcionar OpenClaw necessites:

**Node.js** (versió 18 o superior): L'entorn d'execució on corre OpenClaw. S'instal·la en 2 minuts a qualsevol sistema operatiu.

**Un ordinador:** Mac, Linux, o Windows amb WSL (Windows Subsystem for Linux). No cal hardware potent — OpenClaw en si no consumeix gairebé recursos. El que consumeix recursos és el model, i si uses un model cloud, l'ordinador només fa d'intermediari.

**Una API key:** Necessites accés a almenys un model. Pot ser gratuït (Google AI Studio, NVIDIA NIM, Groq) o de pagament (OpenAI, Anthropic).

**Connexió a internet:** Per comunicar-se amb l'API del model i amb Telegram.

Opcionalment:

**Un VPS (servidor cloud):** Si vols que l'agent funcioni 24/7 sense tenir l'ordinador encès. Oracle Cloud ofereix un tier gratuït que és suficient per a OpenClaw.

**Telegram:** Per la interfície de bot. Necessites un compte de Telegram (gratuït).

## Què pots fer amb OpenClaw?

Un cop instal·lat i configurat, el teu agent pot:

- Mantenir converses intel·ligents per Telegram
- Buscar informació a internet en temps real
- Llegir i processar documents que li enviïs
- Enviar-te resums, briefings i alertes automàtiques
- Monitoritzar webs, feeds, o preus
- Generar contingut (textos, traduccions, resums)
- Connectar-se a serveis externs via MCP

I tot això configurat sense escriure una sola línia de codi.

## On viurà el teu agent?

Tens tres opcions per on executar l'agent:

**Al teu ordinador personal:** La manera més fàcil per provar. L'agent funciona mentre l'ordinador està encès. Quan l'apagues, l'agent s'atura.

**A un VPS cloud:** L'agent funciona 24/7 sense dependre del teu ordinador. Oracle Cloud Free Tier, per exemple, t'ofereix un servidor gratuït suficient per a OpenClaw.

**A un Mac Mini o similar:** Un ordinador petit sempre encès a casa. Combina la privacitat de l'opció local amb la disponibilitat 24/7.

Per a les pràctiques d'aquesta setmana, qualsevol de les tres opcions serveix.

## Conceptes clau d'avui

- **OpenClaw:** Framework open source per crear agents d'IA personals sense programar
- **Configuració per JSON:** No cal codi — edites un fitxer i l'agent canvia de comportament
- **Requisits:** Node.js + API key + connexió a internet
- **Clawhub.ai:** Directori de skills per a OpenClaw
- **Tres opcions de desplegament:** PC personal, VPS cloud, o mini servidor a casa

---

*Propera lliçó: Instal·lació d'OpenClaw pas a pas.*
