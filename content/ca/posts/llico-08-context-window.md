---
title: "Lliçó 8: La finestra de context — la memòria a curt termini d'un LLM"
date: 2026-04-09
slug: "llico-08-context-window"
draft: false
tags: ["context-window", "memoria", "llm"]
categories: ["LLM"]
summary: "Què és el context window, per què té límit, què passa quan el superes, i per què un LLM no recorda les converses anteriors."
ShowToc: true
weight: 8
---

## Què és la finestra de context?

La **finestra de context** (context window) és la quantitat total de text que un LLM pot processar d'un sol cop. Inclou tant el que tu li envies (entrada) com el que ell genera (sortida).

Pensa en la finestra de context com la "memòria de treball" del model — l'equivalent a la teva memòria a curt termini quan llegeixes un text. Pots tenir al cap unes quantes pàgines de contingut. Si el text és molt llarg, les primeres pàgines es van desdibuixant mentre avances.

Un LLM funciona igual: tot el que cap dins la finestra de context, ho pot "veure" i usar. El que no hi cap, no existeix per a ell.

## Quant hi cap?

La mida de la finestra de context es mesura en tokens i varia molt entre models:

Els primers models comercials (GPT-3, 2020) tenien finestres de **4.096 tokens** — unes 3.000 paraules, poc més que un article curt.

Avui els models puntuals ofereixen finestres molt més grans. Claude pot treballar amb **200.000 tokens** (unes 150.000 paraules, l'equivalent a un llibre sencer). GPT-4 arriba a 128.000 tokens. Gemini 1.5 Pro va arribar al milió de tokens.

Aquestes xifres sonen enormes, però en la pràctica s'omplen més ràpid del que sembla. Si li dones al model un document de 50 pàgines i li fas preguntes, gran part de la finestra ja està ocupada pel document.

## Entrada + sortida = context total

Un punt important que molta gent no entén: la finestra de context inclou **tot** — l'entrada i la sortida.

Si un model té una finestra de 128K tokens i tu li envies un document de 100K tokens, li queden 28K tokens per generar la resposta. Si li dones un document de 127K tokens, pràcticament no pot respondre.

En una conversa, la cosa es complica: cada missatge teu i cada resposta del model s'acumulen dins la finestra. Una conversa llarga pot arribar al límit sense que te n'adonis.

## Què passa quan arribes al límit?

Quan la conversa o l'entrada supera la finestra de context, el model ha de "descartar" informació. Depenent del sistema, pot passar una de dues coses:

**Truncament:** El sistema elimina els missatges més antics de la conversa per fer espai als nous. El model "oblida" el principi de la conversa. Això pot causar que perdi el fil d'una discussió llarga.

**Error:** Alguns sistemes simplement rebutgen l'entrada si supera el límit i et demanen que la redueixis.

Cap de les dues opcions és ideal. Per això, gestionar bé el context és una habilitat important quan treballes amb LLM.

## Un LLM no recorda entre converses

Aquesta és potser la confusió més gran que té la gent: **un LLM no recorda les converses anteriors**.

Cada vegada que obres un xat nou amb ChatGPT, Claude o qualsevol LLM, el model comença completament de zero. No sap qui ets, què li vas preguntar ahir, ni què vas acordar amb ell la setmana passada.

Per què? Perquè el model és un programa estàtic que no canvia quan parles amb ell. Les teves converses no modifiquen els paràmetres del model. Quan tanques el xat, tot desapareix (pel que fa al model).

Llavors, com és que ChatGPT i Claude "recorden" coses? Perquè les plataformes afegeixen capes per sobre del model:

- **Historial de conversa:** El sistema guarda els missatges anteriors i els torna a enviar al model en cada interacció (consumint tokens de la finestra de context)
- **Memòria persistent:** Alguns sistemes extreuen informació clau de les converses i la guarden en una base de dades separada, injectant-la en futures converses
- **System prompt:** Instruccions fixes que s'envien al model en cada missatge (consumint tokens però mantenint coherència)

Tot això són "trucs" externs al model — el model en si no recorda res.

## Consells pràctics sobre el context

**Sigues concís:** No omplis la finestra de context amb text innecessari. Cada token que malbarates és un token menys per a la resposta o per al context important.

**Estructura bé les converses llargues:** Si tens una conversa molt llarga, considera començar-ne una de nova amb un resum del que heu discutit fins ara.

**Dóna context rellevant:** Si necessites que el model sàpiga alguna cosa, posa-ho al missatge. No assumeixis que ho "sap" d'alguna conversa anterior.

**Entén el trade-off:** Finestres de context més grans permeten treballar amb documents llargs, però també costen més (més tokens processats) i poden ser més lentes.

## Conceptes clau d'avui

- **Finestra de context (context window):** La quantitat total de tokens que un LLM pot processar d'un cop (entrada + sortida)
- **Truncament:** Quan el sistema elimina missatges antics per fer espai als nous
- **Un LLM no recorda entre converses:** Cada xat comença de zero; la "memòria" la gestionen capes externes
- **Historial de conversa:** Truc de la plataforma — reenvia els missatges anteriors al model consumint tokens

---

*Propera lliçó: El mapa dels LLM — qui és qui al 2026.*
