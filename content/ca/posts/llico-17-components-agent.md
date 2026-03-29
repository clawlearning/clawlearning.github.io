---
title: "Lliçó 17: Anatomia d'un agent — les peces del trencaclosques"
date: 2026-04-22
slug: "llico-17-components-agent"
draft: false
tags: ["agent", "components", "arquitectura"]
categories: ["Agents"]
summary: "Detallem els components d'un agent d'IA: cervell, eines, memòria, sentits i mans. Com encaixen per crear un agent funcional."
ShowToc: true
weight: 17
---

## Les peces de l'agent

Un agent d'IA no és una sola cosa — és un conjunt de components que treballen junts. Entendre cada peça t'ajudarà a configurar el teu agent amb criteri, sabent per què tries cada element.

## El cervell: el model LLM

El cor de qualsevol agent és un LLM. És el que "pensa": interpreta les teves instruccions, decideix quines eines usar, genera les respostes, i coordina tot el procés.

Quan configures un agent, la primera decisió és quin model li poses com a cervell. Un model potent (Claude Sonnet, GPT-4) donarà respostes més intel·ligents però costarà més. Un model petit (LLaMA 8B, Phi) serà més barat i ràpid però menys capaç.

El cervell determina el "sostre" de l'agent: per molt bona que sigui la resta de la configuració, l'agent no pot ser més intel·ligent que el model que el mou.

## Les mans: les eines (tools/skills)

Si el cervell pensa, les mans actuen. Les **eines** (tools o skills) són les capacitats concretes que dones a l'agent per fer coses al món real.

Sense eines, un agent és un chatbot. Amb eines, pot:

- **Cerca web:** Buscar informació actual a internet
- **Lectura de fitxers:** Obrir i processar documents, PDFs, fulls de càlcul
- **Enviament de missatges:** Enviar emails, missatges de Telegram, notificacions
- **Accés a serveis:** Connectar-se a Google Calendar, Slack, bases de dades
- **Execució de codi:** Escriure i executar programes
- **Generació d'imatges:** Crear imatges amb models com DALL-E

L'agent decideix quina eina usar basant-se en la tasca. Si li demanes "quines notícies hi ha avui?", decidirà usar l'eina de cerca web. Si li demanes "resumeix aquest PDF", usarà l'eina de lectura de fitxers.

Això és una capacitat emergent dels LLM moderns que no se'ls programa explícitament: aprenen a seleccionar l'eina correcta pel context de la petició.

## La memòria: recordar i aprendre

La memòria és un dels components més importants i més difícils d'un agent.

Com ja saps de la Lliçó 8, un LLM no recorda entre converses. Cada interacció comença de zero. Però un bon agent necessita recordar coses: qui ets, quines preferències tens, què heu parlat anteriorment, quines tasques té pendents.

Hi ha dos tipus de memòria en un agent:

**Memòria a curt termini (context window):** El que l'agent "recorda" dins d'una mateixa conversa. Inclou el teu missatge actual, l'historial recent, i les instruccions del system prompt. Limitada per la mida del context window del model.

**Memòria a llarg termini (persistent):** Informació que es guarda fora del model, en una base de dades o fitxers. L'agent pot consultar-la per recuperar informació d'interaccions anteriors. Normalment usa tècniques com embeddings i cerca semàntica per trobar informació rellevant.

La memòria a llarg termini és el que fa que un agent "et conegui": sap el teu nom, les teves preferències, el context del teu treball. Sense ella, cada conversa seria com parlar amb un desconegut.

## Els sentits: per on entra la informació

Un agent necessita rebre informació d'alguna banda. Els "sentits" són els canals d'entrada:

**Telegram:** El canal més comú per a agents personals. Li envies missatges des del mòbil i ell respon.

**Email:** L'agent pot monitoritzar una bústia de correu i processar emails entrants.

**Web:** Pot rebre peticions a través d'una pàgina web o API.

**Fitxers:** Pot processar documents que li comparteixes.

**Cron (temps):** Pot activar-se automàticament a hores programades, sense que ningú li digui res.

La majoria d'agents personals usen Telegram com a canal principal — és immediat, funciona al mòbil, i permet tant text com fitxers.

## El sistema nerviós: el framework

El **framework** és el programari que connecta totes les peces. Agafa el teu missatge, el passa al model junt amb les instruccions i l'historial, rep la resposta, detecta si el model vol usar alguna eina, executa l'eina, i retorna el resultat.

Sense framework, hauries de programar tota aquesta lògica tu. Amb un framework com OpenClaw, tot això ve fet — tu només configures les peces.

El framework gestiona el flux complet:

1. Rep el teu missatge (des de Telegram, per exemple)
2. Construeix el prompt complet (system prompt + historial + missatge)
3. L'envia al model (via l'API del provider)
4. Rep la resposta del model
5. Si el model vol usar una eina, l'executa i li torna el resultat
6. Repeteix fins que el model té la resposta final
7. T'envia la resposta per Telegram

## Com encaixa tot

Vegem un exemple complet. Li dius al teu agent per Telegram: "Quines són les últimes notícies sobre IA a Catalunya?"

1. **Telegram** (sentit) rep el teu missatge i el passa a **OpenClaw** (framework)
2. OpenClaw construeix el prompt amb el teu missatge + system prompt + historial
3. El prompt s'envia al **model** (cervell) via l'API del provider
4. El model decideix que necessita informació actual i demana usar l'eina de **cerca web** (mans)
5. OpenClaw executa la cerca web i li retorna els resultats
6. El model processa els resultats i genera un resum
7. Si té **memòria**, guarda que t'interessa la IA a Catalunya
8. La resposta t'arriba per **Telegram**

Tot això passa en segons, de forma automàtica, sense que tu vegis la maquinària que hi ha darrere.

## Conceptes clau d'avui

- **Cervell (LLM):** El model que pensa, raona i decideix
- **Mans (tools/skills):** Les eines que permeten a l'agent actuar al món real
- **Memòria:** Curt termini (context window) + llarg termini (base de dades persistent)
- **Sentits (inputs):** Telegram, email, web, fitxers, cron
- **Sistema nerviós (framework):** El programari que connecta totes les peces (OpenClaw)

---

*Propera lliçó: Tools i Skills — les mans de l'agent en detall.*
