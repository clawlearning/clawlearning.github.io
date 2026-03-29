---
title: "Lliçó 12: Què és una API? La porta d'entrada als LLM"
date: 2026-04-15
slug: "llico-12-que-es-una-api"
draft: false
tags: ["api", "claus", "acces"]
categories: ["Infraestructura"]
summary: "Desmitifiquem les APIs — què són, com funcionen, i per què les necessites per tenir un agent."
ShowToc: true
weight: 12
---

## Per què necessites saber què és una API?

Si vols usar un LLM des del navegador (ChatGPT, Claude.ai), no necessites saber què és una API. Simplement obres la web, escrius i ja.

Però si vols un **agent propi** — un bot de Telegram que treballi per tu, una automatització que processi emails, un sistema que publiqui contingut — necessites connectar-te al model per una altra via. Aquesta via és l'API.

## Què és una API?

**API** ve d'Application Programming Interface — Interfície de Programació d'Aplicacions. Sona intimidant, però el concepte és senzill.

Una API és un **sistema de comunicació estandarditzat** entre dos programes. Permet que un programa faci peticions a un altre i rebi respostes, sense que cap humà intervingui.

L'analogia més clara és un restaurant:

1. **Tu** (l'agent/programa) ets el client
2. **La carta** és la documentació de l'API — et diu què pots demanar
3. **El cambrer** és l'API — porta la teva comanda a la cuina i et torna el plat
4. **La cuina** és el model (LLM) — processa la comanda i prepara el resultat

Tu no entres a la cuina a cuinar. Fas la comanda al cambrer, en un format que ell entén (tries de la carta), i ell gestiona tot el procés. L'API funciona exactament igual: el teu programa envia una petició en un format estàndard, i l'API li retorna la resposta del model.

## API vs interfície web

Quan uses ChatGPT al navegador, darrere hi ha una API — però la interfície web t'amaga tota la complexitat. Tu escrius text, fas clic a "Enviar", i veus la resposta.

Quan uses l'API directament, tu ets qui construeix la petició. Li dius al model exactament què vols: quin model usar, quants tokens de resposta, a quina temperatura (grau de creativitat), i quin text processar.

La diferència clau: la interfície web és per a **humansinteractius**. L'API és per a **programes autònoms**. Un agent d'IA no pot obrir un navegador i escriure a ChatGPT — però sí que pot enviar peticions a l'API de forma automàtica.

## Com funciona una petició a l'API?

Sense entrar en codi, una petició a l'API d'un LLM conté:

**Cap a on va:** L'URL del provider (per exemple, `api.openai.com` o `api.anthropic.com`)

**Qui ets tu:** La teva clau d'API (API key) — un codi únic que t'identifica i permet controlar l'ús i la facturació

**Què vols:** El missatge que envies al model, inclòs el system prompt, l'historial de conversa, i el missatge actual

**Com ho vols:** Paràmetres com el model a usar, el màxim de tokens de resposta, la temperatura, etc.

El provider rep tot això, ho envia al model, i et retorna la resposta en un format estructurat que el teu programa pot llegir.

## API keys: la teva clau d'accés

Una **API key** és com una contrasenya especial que t'identifica davant del provider. Cada vegada que el teu agent fa una petició, envia la API key perquè el provider sàpiga qui ets i a quin compte carregar el consum.

Cada provider et dona la seva pròpia API key quan et registres. OpenAI et dona una key per als seus models, Anthropic una altra per a Claude, etc.

Regles d'or amb les API keys:

**Mai comparteixis una API key.** Si algú la té, pot fer peticions al teu compte i tu pagaràs la factura.

**Mai la posis al codi que puges a GitHub.** Això és un error clàssic — hi ha bots que escanegen GitHub buscant API keys exposades i les exploten en minuts.

**Guarda-les en variables d'entorn.** En lloc de posar la key directament al codi, la guardes com a variable del sistema operatiu i el codi la llegeix d'allà.

**Pots revocar-les i crear-ne de noves.** Si creus que una key s'ha compromès, elimina-la immediatament des del panell del provider i crea'n una de nova.

## El cost de l'API

La majoria de providers d'API cobren **per token processat** — tant els d'entrada com els de sortida. El model de negoci és "paga pel que usis":

- Si el teu agent processa 1000 peticions al dia, pagues per tots els tokens de totes les peticions
- Si un dia no l'uses, no pagues res
- Els tokens de sortida solen ser més cars que els d'entrada (2-4 vegades més)

Això és molt diferent del model de subscripció de ChatGPT Plus (pagues una quota fixa mensual). Amb l'API, tens control total sobre el cost — però també tens la responsabilitat de monitoritzar-lo.

Per això, quan configures un agent, és important pensar en l'eficiència: prompts concises, respostes limitades en longitud, i models adequats per a cada tasca (no usar un model car per a tasques simples).

## APIs compatibles amb OpenAI

Un detall tècnic que et serà útil: molts providers d'inferència usen un format d'API **compatible amb OpenAI**. Això vol dir que la manera d'enviar peticions és la mateixa per a tots — només canvies l'URL del provider i la API key.

Per a OpenClaw, això és molt pràctic: pots canviar de provider (de NVIDIA NIM a Groq, per exemple) simplement canviant dos paràmetres a la configuració, sense tocar res més. El format de comunicació és el mateix.

## Conceptes clau d'avui

- **API:** Interfície de comunicació entre programes — el "cambrer" entre el teu agent i el model
- **API key:** Clau única que t'identifica davant del provider. Mai compartir-la
- **Petició:** El missatge que envies a l'API (inclou model, missatge, paràmetres)
- **Preu per token:** El model de cobrament de la majoria d'APIs d'LLM
- **API compatible amb OpenAI:** Format estàndard que molts providers adopten per facilitar la interoperabilitat

---

*Propera lliçó: Gratuït vs de pagament — on puc usar IA sense pagar?*
