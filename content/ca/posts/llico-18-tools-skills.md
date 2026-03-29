---
title: "Lliçó 18: Tools i Skills — les mans de l'agent"
date: 2026-04-23
slug: "llico-18-tools-skills"
draft: false
tags: ["tools", "skills", "mcp"]
categories: ["Agents"]
summary: "Què són les tools i skills, per què són essencials, com un agent decideix quina usar, i què és el MCP."
ShowToc: true
weight: 18
---

## Per què les eines ho canvien tot

Imagina que tens un assistent molt intel·ligent tancat en una habitació sense telèfon, sense ordinador, sense res. Pot pensar brillantment, però no pot fer res. Li demanes "busca'm vols barats a Lisboa" i et diu "bona idea, però no tinc accés a internet".

Això és un LLM sense eines. Intel·ligent però inútil per a tasques pràctiques.

Ara imagina que li dones un telèfon, un ordinador i accés a internet. De cop, pot buscar vols, comparar preus, i dir-te la millor opció. La seva intel·ligència no ha canviat — però la seva **capacitat d'actuar** s'ha multiplicat.

Les eines (tools/skills) són el telèfon i l'ordinador de l'agent.

## Què és una tool?

Una **tool** (eina) és una funció específica que l'agent pot executar. Tècnicament, és un tros de codi que fa una cosa concreta i que el model pot "cridar" quan ho necessita.

Quan configures un agent, li dius quines eines té disponibles i què fa cadascuna. El model rep aquesta llista i, quan rep una petició, decideix quina eina (o eines) necessita per completar-la.

Exemples d'eines comunes:

**Cerca web:** L'agent pot buscar informació actual a internet. Útil per a qualsevol pregunta sobre actualitat, preus, notícies.

**Llegir URLs:** L'agent pot obrir una pàgina web i llegir-ne el contingut. Diferent de la cerca — aquí li dones una URL específica.

**Enviar missatge de Telegram:** L'agent pot enviar missatges de forma proactiva, no només respondre.

**Llegir/escriure fitxers:** L'agent pot obrir documents, crear fitxers nous, modificar-los.

**Executar comandes:** L'agent pot executar comandes al sistema operatiu — molt potent però cal configurar-ho amb cura.

## Què és una skill?

En el context d'OpenClaw, una **skill** és el nom que es dona a un paquet d'eines relacionades. Una skill pot contenir una o més tools que treballen juntes per a un propòsit.

Per exemple, una skill de "Reddit" podria incloure:
- Una tool per buscar posts en un subreddit
- Una tool per llegir els comentaris d'un post
- Una tool per obtenir els posts més populars

La distinció entre tool i skill depèn del framework, però el concepte és el mateix: capacitats concretes que dones a l'agent.

## Com decideix l'agent quina eina usar?

Aquesta és una de les capacitats més impressionants dels LLM moderns. Quan li dones eines a un agent, el model no segueix regles rígides — **raona** sobre quina eina necessita.

Li envies: "Quines notícies hi ha avui sobre Intel·ligència Artificial?"

El model "pensa": "Necessito informació actual. La meva dada d'entrenament pot estar desactualitzada. Tinc una eina de cerca web. La faré servir."

I fa la cerca. Rep els resultats. Els processa i et dona un resum.

Li envies: "Resumeix-me aquest PDF" (amb un fitxer adjunt)

El model "pensa": "M'han enviat un fitxer. Tinc una eina per llegir fitxers. La faré servir."

Llegeix el PDF, n'extreu el contingut, i te'l resumeix.

Fins i tot pot encadenar eines: buscar informació, guardar-la en un fitxer, i enviar-te un missatge per avisar-te que està llest.

## MCP: l'estàndard que ho connecta tot

**MCP** (Model Context Protocol) és un estàndard creat per Anthropic que defineix com els agents es connecten a serveis externs.

Abans del MCP, cada integració era un projecte a mida. Volies connectar l'agent a Google Calendar? Havies d'escriure codi específic per a l'API de Google Calendar. Volies connectar-lo a Slack? Més codi específic. Cada servei, una integració diferent.

El MCP estandarditza la comunicació. Un servei que implementi MCP es pot connectar a qualsevol agent que suporti MCP — sense codi a mida. Pensa en el MCP com l'USB de les eines d'IA: un connector universal.

Avui ja hi ha servidors MCP per a centenars de serveis: Google Calendar, Gmail, Slack, GitHub, bases de dades, i molt més. La llista creix cada dia.

## On trobar eines per al teu agent

**Clawhub.ai:** El directori d'skills per a OpenClaw. Pots buscar, instal·lar i configurar skills des d'aquí.

**Servidors MCP de la comunitat:** Hi ha repositoris amb centenars de servidors MCP llestos per usar.

**Skills pròpies:** Si tens coneixements tècnics (o un agent que programi), pots crear les teves pròpies skills.

La bellesa del sistema és que pots començar amb poques eines i anar-ne afegint a mesura que identifiques necessitats.

## Precaucions amb les eines

Les eines donen poder a l'agent, però també responsabilitat:

**Principi del mínim privilegi:** Dóna-li a l'agent només les eines que realment necessita. No li donis accés a executar comandes del sistema si no ho necessita.

**Revisa el que fa:** Especialment al principi, monitoritza com l'agent usa les eines. Assegura't que fa el que esperes.

**Eines sensibles:** Eines que envien emails, publiquen contingut, o modifiquen fitxers poden causar problemes si l'agent les usa malament. Configura-les amb cura.

## Conceptes clau d'avui

- **Tool:** Funció específica que l'agent pot executar (buscar, llegir, enviar)
- **Skill:** Paquet d'eines relacionades (terminologia OpenClaw)
- **MCP (Model Context Protocol):** Estàndard de connexió entre agents i serveis externs
- **L'agent decideix quina eina usar** — no segueix regles rígides, raona sobre la millor opció
- **Principi del mínim privilegi:** Dóna-li només les eines que necessita

---

*Propera lliçó: La memòria d'un agent — com recorda (i oblida).*
