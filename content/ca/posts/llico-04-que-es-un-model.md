---
title: "Lliçó 4: Què és un model d'IA? (sense matemàtiques)"
date: 2026-04-03
slug: "llico-04-que-es-un-model"
draft: false
tags: ["model", "entrenament", "parametres"]
categories: ["Fonaments"]
summary: "Què és un model, com s'entrena, per què n'hi ha de grans i petits, i per què no tots els models són iguals."
ShowToc: true
weight: 4
---

## Què és un model?

Un model d'IA és un programa que ha estat **entrenat amb dades** per fer una tasca. Pensa en ell com un cervell especialitzat: ha absorbit una quantitat enorme d'informació i ha après patrons que li permeten fer prediccions o generar contingut.

La paraula "model" pot confondre perquè s'usa molt en ciència amb significats diferents. En IA, un model és simplement el resultat de l'entrenament: un fitxer (o conjunt de fitxers) que conté tot el que la màquina ha après.

## L'entrenament: com aprèn un model

Imagina que vols ensenyar a un nen a reconèixer gats. No li dones una definició ("animal de quatre potes amb bigotis") — li mostres centenars de fotos de gats i dius "això és un gat". Amb prou exemples, el nen aprèn a reconèixer gats que mai ha vist.

Un model d'IA funciona igual, però a una escala massiva:

1. **Li dones dades d'entrenament** — milions o bilions d'exemples
2. **El model busca patrons** — connexions entre les dades que li permeten predir
3. **S'avalua i es corregeix** — si s'equivoca, s'ajusten els paràmetres interns
4. **Es repeteix** el procés fins que les prediccions són prou bones

Per a un model de llenguatge com Claude o GPT, les "dades d'entrenament" són quantitats enormes de text: llibres, articles, webs, codi, converses. El model aprèn com funciona el llenguatge: quines paraules solen anar juntes, com s'estructura una frase, com es desenvolupa un argument.

## Paràmetres: la mida del cervell

Quan sents parlar de models de "7B", "70B" o "405B", la B vol dir **bilions de paràmetres**.

Un paràmetre és un número intern del model que s'ajusta durant l'entrenament. Pensa en els paràmetres com les connexions sinàptiques del cervell: cadascuna guarda un trosset del que el model ha après.

Més paràmetres vol dir que el model pot aprendre patrons més complexos i subtils. Però també vol dir que necessita més memòria per funcionar i és més lent.

Per posar-ho en perspectiva:

- Un model petit (1-3B paràmetres) pot funcionar al teu ordinador. Fa tasques bàsiques bé, però es queda curt amb raonaments complexos.
- Un model mitjà (7-13B) necessita un bon ordinador amb GPU. Pot mantenir converses coherents i fer tasques variades.
- Un model gran (70B+) necessita servidors potents. És el que fan servir els serveis comercials com ChatGPT o Claude.
- Un model gegant (200B+) necessita centres de dades sencers. Són els models punta de les grans empreses.

## Més gran no sempre és millor

Una trampa comuna és pensar que el model més gran serà sempre el millor. No és així.

Un model petit ben entrenat amb dades de qualitat pot superar un model gran entrenat amb dades mediocres. La qualitat de les dades d'entrenament és tan important com la mida del model — i sovint més.

A més, un model gegant pot ser excessiu per a la teva tasca. Si només necessites que et resumeixi emails, un model de 7B pot fer-ho perfectament. Gastar diners en un model de 200B per a aquesta tasca seria com llogar un camió per anar a comprar el pa.

## La importància de les dades

Hi ha una expressió en anglès: **"Garbage in, garbage out"** — si li dones brossa, et torna brossa. Això és especialment cert per als models d'IA.

Un model entrenat amb textos plens d'errors tindrà errors. Un model entrenat majoritàriament amb textos en anglès serà pitjor en català. Un model entrenat amb dades esbiaixades reproduirà aquests biaixos.

Per això les empreses que entrenen models inverteixen tant en **curar les dades**: seleccionar, netejar i equilibrar els textos amb què entrenen els seus models. No és només qüestió de quantitat — la qualitat i diversitat de les dades determinen la qualitat del model resultant.

## Models oberts vs models tancats

Una distinció important és entre models **oberts** i **tancats**:

**Models tancats** (propietaris): No pots veure com estan fets ni descarregar-los. Només pots usar-los a través de l'API o la web de l'empresa. Exemples: GPT d'OpenAI, Claude d'Anthropic, Gemini de Google.

**Models oberts** (open source o open weights): Pots descarregar el model, executar-lo al teu ordinador, modificar-lo i usar-lo com vulguis. Exemples: LLaMA de Meta, Mistral, Qwen.

Cada opció té avantatges:

Els models tancats solen ser més potents (les empreses no publiquen els seus millors models) i no necessites hardware propi. Però depens de l'empresa, pagues per ús, i les teves dades passen pels seus servidors.

Els models oberts et donen control total, privacitat, i cost zero per ús. Però necessites hardware per executar-los i sovint són menys potents que els millors models tancats.

## L'analogia del xef

Si tot això encara sona abstracte, pensa en un xef:

- Les **dades d'entrenament** són tots els plats que ha provat, les receptes que ha estudiat, les cuines que ha visitat
- Els **paràmetres** són les seves habilitats i coneixements acumulats
- El **model** és el xef entrenat, llest per cuinar
- El **prompt** (que veurem més endavant) és el que li demanes que cuini
- La **resposta** és el plat que et serveix

Un xef amb més experiència (més paràmetres) i millors mestres (millors dades) farà millors plats. Però fins i tot el millor xef necessita que li demanis bé el que vols — si li dius "fes menjar", el resultat serà aleatori. Si li dius "fes un risotto de bolets amb un toc de tòfona", el resultat serà molt millor.

## Conceptes clau d'avui

- **Model:** El resultat de l'entrenament — un fitxer que conté tot el que la màquina ha après
- **Entrenament:** El procés d'alimentar un model amb dades perquè aprengui patrons
- **Paràmetres (7B, 70B, 405B):** Les connexions internes del model. Més paràmetres = més capacitat, més recursos
- **Dades d'entrenament:** El material amb què aprèn el model. La qualitat és clau
- **Model obert:** Pots descarregar-lo i executar-lo al teu hardware
- **Model tancat:** Només accessible via API o web de l'empresa

---

*Propera lliçó: La IA que ja fas servir sense saber-ho — un recorregut per totes les aplicacions d'IA del teu dia a dia.*
