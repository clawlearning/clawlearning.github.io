---
title: "Lliçó 16: Què és un agent d'IA? Més que un chatbot"
date: 2026-04-21
slug: "llico-16-que-es-un-agent"
draft: false
tags: ["agent", "automatitzacio", "basics"]
categories: ["Agents"]
summary: "Definim agent d'IA, el diferenciem d'un chatbot, i entenem per què és un salt qualitatiu en com interactuem amb la IA."
ShowToc: true
weight: 16
---

## Setmana 4: el salt dels agents

Fins ara has après com funciona la IA, els LLM, i com accedir-hi. Tot això és teoria essencial, però estàtica: tu preguntes, el model respon. Un ping-pong de text.

Un **agent** canvia les regles del joc. Un agent no espera que li preguntis — pot actuar per si sol. No es limita a generar text — pot executar accions reals: buscar informació, enviar missatges, llegir fitxers, interactuar amb serveis externs.

## Chatbot vs Agent

La diferència és fonamental:

Un **chatbot** és reactiu. Tu li parles, ell respon. Li fas una pregunta, et dona una resposta. Si no li dius res, no fa res. ChatGPT al navegador és un chatbot: una conversa on tu portes la iniciativa.

Un **agent** és proactiu. Pot rebre una instrucció complexa i descompondre-la en passos. Pot decidir quines eines usar per completar una tasca. Pot executar accions sense que tu intervinguis a cada pas. Pot funcionar en segon pla mentre tu fas altres coses.

Exemple concret per entendre-ho:

**Chatbot:** "Quin temps fa a Barcelona?" → "Ara mateix fa 18°C amb cel parcialment ennuvolat."

**Agent:** "Cada matí a les 7, digue'm el temps que farà avui i si he d'agafar paraigua." → L'agent configura un recordatori, cada dia a les 7 consulta una API meteorològica, interpreta les dades, i t'envia un missatge al Telegram amb la recomanació. Tot sol, cada dia, sense que tu facis res.

La diferència no és el model que hi ha darrere — pot ser el mateix LLM. La diferència és la **capa d'execució**: l'agent té accés a eines (tools) que li permeten fer coses al món real.

## Què fa un agent, en concret?

Un agent d'IA pot fer qualsevol cosa per a la qual tingui eines configurades:

**Buscar informació a internet:** En lloc de respondre amb el que sap del seu entrenament, l'agent pot fer cerques web en temps real i donar-te informació actualitzada.

**Llegir i processar fitxers:** Pot llegir un PDF, un full de càlcul, un document, i extreure'n informació o resumir-lo.

**Enviar missatges:** Pot enviar emails, missatges de Telegram, o notificacions.

**Monitoritzar coses:** Pot revisar periòdicament una web, un feed de notícies, o un preu, i avisar-te quan passi alguna cosa.

**Generar i publicar contingut:** Pot escriure articles, traduir-los, i publicar-los en una web automàticament. De fet, aquesta web que estàs llegint funciona exactament així.

**Interactuar amb serveis externs:** A través de protocols com MCP (Model Context Protocol), un agent pot connectar-se a Google Calendar, Slack, bases de dades, i centenars d'altres serveis.

## Per què no és perillós?

Quan la gent sent "agent autònom" sovint imagina escenaris de ciència ficció. La realitat és molt més mundana.

Un agent d'IA actual no pren decisions per si sol sobre coses importants — fa el que tu li has configurat. No pot fer res per a què no tingui eines específiques. Si no li dones accés al teu email, no pot enviar emails. Si no li dones accés a internet, no pot buscar res.

Pensa en un agent com un assistent personal molt obedient: farà exactament el que li diguis, amb les eines que li donis, i res més. La responsabilitat de decidir què pot fer i què no recau en tu, que el configures.

## L'explosió dels agents al 2025-2026

Per què ara? Per què no fa cinc anys?

Tres coses han convergit:

**Models prou bons:** Els LLM actuals poden entendre instruccions complexes, descompondre tasques, i decidir quines eines usar. Fa pocs anys, els models no eren prou bons per a això.

**Protocols estàndard (MCP):** Anthropic va crear el Model Context Protocol, un estàndard obert que permet connectar agents a qualsevol servei extern de manera uniforme. Abans, cada integració era un projecte d'enginyeria a mida.

**Frameworks accessibles:** Eines com OpenClaw han fet que muntar un agent sigui qüestió de minuts, no de setmanes. No cal ser programador per tenir un agent funcional.

Aquesta convergència ha causat el boom d'agents que estàs veient ara — i per això estàs aquí, aprenent a muntar el teu.

## Conceptes clau d'avui

- **Chatbot:** Respon preguntes de forma reactiva. Tu preguntes, ell respon
- **Agent:** Executa tasques de forma proactiva. Pot actuar sol, usar eines, i interactuar amb serveis
- **Tools (eines):** Capacitats que es donen a l'agent (cerca web, enviar missatges, llegir fitxers)
- **MCP:** Model Context Protocol — estàndard per connectar agents a serveis externs
- **Un agent no és autònom** — fa el que li configures, amb les eines que li dones

---

*Propera lliçó: Anatomia d'un agent — les peces del trencaclosques.*
