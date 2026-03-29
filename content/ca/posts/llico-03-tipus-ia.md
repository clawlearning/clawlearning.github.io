---
title: "Lliçó 3: Tipus d'IA — com classifiquem les màquines intel·ligents"
date: 2026-04-02
slug: "llico-03-tipus-ia"
draft: false
tags: ["ia", "machine-learning", "classificacio"]
categories: ["Fonaments"]
summary: "Les diferents categories d'IA explicades de forma pràctica: Machine Learning, Deep Learning, IA generativa i molt més."
ShowToc: true
weight: 3
---

## Per què classificar la IA?

Quan algú diu "IA", pot estar parlant de coses molt diferents. El filtre de spam del teu email és IA. ChatGPT és IA. Un cotxe autònom és IA. Però funcionen de maneres completament diferents.

Entendre els tipus d'IA t'ajudarà a saber de què parla la gent quan diu "machine learning", "deep learning" o "IA generativa" — termes que sonen similars però signifiquen coses molt diferents.

## El gran paraigua: Intel·ligència Artificial

La IA és el paraigua general que ho engloba tot. Qualsevol sistema que faci tasques que normalment requeririen intel·ligència humana és IA. Dins d'aquest paraigua, hi ha nivells.

Pensa-t'ho com cercles concèntrics: la IA és el cercle gran, dins hi ha el Machine Learning, i dins d'aquest hi ha el Deep Learning. No són coses diferents — cadascun és un subconjunt de l'anterior.

## Machine Learning: aprendre dels exemples

El **Machine Learning** (ML, aprenentatge automàtic) és la branca de la IA on la màquina aprèn dels exemples en lloc de ser programada amb regles.

En la programació tradicional, tu li dius a l'ordinador exactament què ha de fer: "si l'email conté la paraula 'viagra', és spam". En Machine Learning, li dones milers d'emails etiquetats com a "spam" o "no spam", i la màquina aprèn sola a distingir-los. Pot descobrir patrons que tu ni imaginaves.

Hi ha tres tipus principals d'aprenentatge:

**Aprenentatge supervisat:** Li dones dades amb les respostes correctes, i aprèn a predir-les. Exemple: li mostres 10.000 fotos de gats i gossos etiquetades, i aprèn a distingir-los en fotos noves.

**Aprenentatge no supervisat:** Li dones dades sense etiquetar, i busca patrons per si sol. Exemple: li dones dades de clients i descobreix grups (els que compren molt, els que compren poc, els que compren de nit...) sense que tu li diguis quins grups buscar.

**Aprenentatge per reforç:** La màquina aprèn per prova i error, rebent "recompenses" quan ho fa bé i "penalitzacions" quan ho fa malament. Exemple: un programa que juga a escacs juga milions de partides contra si mateix i aprèn quines estratègies funcionen.

## Deep Learning: xarxes neuronals profundes

El **Deep Learning** és un subconjunt del Machine Learning que usa **xarxes neuronals artificials** — estructures inspirades (molt vagament) en el cervell humà.

Una xarxa neuronal és una cadena de capes de "neurones" que processen la informació. Cada capa detecta patrons a un nivell diferent. En reconeixement d'imatges, per exemple, la primera capa detecta línies, la segona formes, la tercera objectes, la quarta escenes completes.

"Profund" (deep) vol dir que la xarxa té moltes capes. Les xarxes dels anys 90 tenien 2-3 capes. Les d'avui poden tenir centenars. Més capes = capacitat de detectar patrons més complexos, però també necessita més dades i més potència de càlcul.

Tot el que estem veient al boom actual — reconeixement de veu, generació de text, traducció, generació d'imatges — és Deep Learning.

## IA Generativa: crear coses noves

La **IA Generativa** és la branca que ha causat l'explosió actual. Són models entrenats per **crear contingut nou**: text, imatges, àudio, vídeo, codi.

A diferència d'una IA que classifica (spam o no spam) o prediu (quin serà el preu demà), la IA generativa **produeix coses que no existien**. Escriu textos, pinta imatges, compon música.

Els exemples més coneguts:

- **Generació de text:** GPT, Claude, Gemini, LLaMA
- **Generació d'imatges:** DALL-E, Midjourney, Stable Diffusion
- **Generació de codi:** GitHub Copilot, Claude, Cursor
- **Generació de vídeo:** Sora, Runway
- **Generació de veu:** ElevenLabs

Quan fem servir ChatGPT o Claude, estem usant IA generativa de text. L'eina no busca informació a internet (tret que tingui cerca web activada) — **genera** text nou paraula per paraula.

## On encaixen les eines que coneixes?

Ara que tens el mapa, veiem on cauen les eines populars:

**ChatGPT, Claude, Gemini:** Són IA generativa de text, construïda amb Deep Learning, específicament amb l'arquitectura Transformer. Pertanyen a la família dels LLM (Large Language Models), que veurem en detall a la setmana 2.

**Google Maps (rutes):** Machine Learning supervisat. Entrenat amb dades de trànsit real per predir temps d'arribada.

**Spotify (recomanacions):** Machine Learning no supervisat + supervisat. Agrupa usuaris amb gustos similars i prediu què t'agradarà.

**Filtre de spam:** Machine Learning supervisat. Entrenat amb milions d'emails etiquetats.

**Tesla Autopilot:** Deep Learning amb visió per computador + aprenentatge per reforç. Processa imatges de les càmeres en temps real.

## No tot el que diu "IA" és IA

Un avís important: el terme "IA" s'ha convertit en un terme de màrqueting. Veuràs productes que diuen "amb IA" que realment fan coses molt simples — a vegades són regles programades a mà sense cap aprenentatge automàtic.

Si una empresa diu que el seu producte "usa IA", pregunta't: aprèn de les dades? O simplement segueix regles fixes? Si és el segon cas, és programació tradicional amb un nom modern.

## Conceptes clau d'avui

- **Machine Learning:** La màquina aprèn dels exemples en lloc de ser programada amb regles
- **Deep Learning:** Machine Learning amb xarxes neuronals de moltes capes
- **IA Generativa:** Models que creen contingut nou (text, imatges, codi, vídeo)
- **Aprenentatge supervisat:** Aprendre amb dades etiquetades (preguntes amb resposta correcta)
- **Aprenentatge no supervisat:** Trobar patrons en dades sense etiquetar
- **Aprenentatge per reforç:** Aprendre per prova i error amb recompenses

---

*Propera lliçó: Què és un model d'IA? — sense matemàtiques, prometut.*
