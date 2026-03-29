---
title: "Lliçó 10: El teu primer prompt — com parlar amb un LLM"
date: 2026-04-11
slug: "llico-10-prompts-basics"
draft: false
tags: ["prompts", "prompt-engineering", "llm"]
categories: ["LLM"]
summary: "Aprèn a escriure prompts efectius i entén per què el resultat depèn de com preguntes."
ShowToc: true
weight: 10
---

## El prompt: la teva eina més poderosa

De totes les coses que aprendràs en aquest curs, la capacitat d'escriure bons prompts és probablement la més útil en el dia a dia. Un bon prompt pot ser la diferència entre una resposta inútil i una resposta brillant — amb el **mateix model**.

Un **prompt** és simplement el text que li envies al model. La teva pregunta, les teves instruccions, el context que li dones. Tot el que escrius a la caixa de text d'un chatbot és un prompt.

## Per què importa com preguntes?

Recorda de la Lliçó 6: un LLM genera text predient la paraula més probable donada l'entrada. Si l'entrada és vaga, la sortida serà vaga. Si l'entrada és específica i clara, la sortida serà molt millor.

Comparem dos prompts per a la mateixa tasca:

**Prompt dolent:** "Explica'm la IA"

Això és massa ampli. El model no sap a quin nivell t'ho ha d'explicar, quant de llarg ha de ser, ni quin aspecte de la IA t'interessa. La resposta serà genèrica i probablement massa llarga.

**Prompt bo:** "Explica'm què és la intel·ligència artificial en 3 paràgrafs curts. El públic és una persona adulta sense coneixements tècnics. Usa exemples quotidians com el mòbil o Netflix."

Aquí el model sap exactament què vols: longitud (3 paràgrafs curts), nivell (adult sense coneixements tècnics), i estil (exemples quotidians). La resposta serà molt més útil.

## Les quatre peces d'un bon prompt

No cal que cada prompt tingui les quatre peces, però tenir-les en ment t'ajudarà:

### 1. Rol

Dir-li al model qui és o quin paper ha d'adoptar.

"Ets un professor d'informàtica que explica conceptes a gent sense formació tècnica."

Això estableix el to, el nivell de detall, i l'estil de comunicació. Un "professor" explicarà amb paciència i exemples. Un "enginyer sènior" donarà detalls tècnics sense simplificar.

### 2. Context

Donar-li la informació necessària per respondre bé.

"Estic preparant una presentació per als directius de la meva empresa. No tenen formació tècnica però prenen decisions de pressupost. La presentació dura 10 minuts."

Sense aquest context, el model no sap per a qui és la resposta ni en quin format la necessites.

### 3. Instrucció

Dir-li exactament què vols que faci.

"Escriu-me 5 punts clau sobre per què hauríem d'invertir en IA, amb un exemple concret per a cada punt."

Com més específica sigui la instrucció, millor serà el resultat.

### 4. Format de sortida

Dir-li com vols la resposta.

"Respon en format llista amb punts numerats. Cada punt ha de tenir un títol en negreta seguit d'una explicació de 2-3 línies."

Això evita que el model generi un text de 2000 paraules quan tu volies una llista concisa.

## Exemples pràctics

Vegem exemples reals de com millorar prompts:

**Tasca: Escriure un email**

Prompt bàsic: "Escriu un email al meu cap sobre vacances"

Prompt millorat: "Escriu un email breu i professional al meu cap, en Jordi, demanant-li 3 dies de vacances la setmana del 15 de juny. El to ha de ser cordial però directe. Menciona que deixaré les tasques pendents organitzades."

**Tasca: Entendre un concepte**

Prompt bàsic: "Què és blockchain?"

Prompt millorat: "Explica'm què és blockchain com si ho expliquessis a algú que sap usar un ordinador però no sap programar. Usa una analogia de la vida quotidiana. Màxim 200 paraules."

**Tasca: Resoldre un problema**

Prompt bàsic: "El meu wifi no funciona"

Prompt millorat: "El wifi de casa ha deixat de funcionar des d'aquesta nit. El router té les llums enceses normalment. El mòbil detecta la xarxa però no es connecta. L'ordinador per cable sí que funciona. Quin pot ser el problema? Dona'm passos per diagnosticar-lo, de més simple a més complex."

Nota la diferència? El segon prompt dona context (què funciona i què no), defineix el format (passos ordenats), i demana un enfocament concret (de simple a complex).

## Errors comuns amb els prompts

**Ser massa vague:** "Ajuda'm amb el meu projecte" — Quin projecte? Quina ajuda? El model no pot llegir la teva ment.

**Fer massa coses a la vegada:** "Explica'm la IA, fes-me un resum del mercat, escriu un pla de negoci i tradueix-ho al xinès" — El model pot fer-ho, però la qualitat de cada part serà inferior. Millor fer-ho pas a pas.

**Assumir que ho sap tot:** "Fes-me el que et vaig dir ahir" — El model no recorda converses anteriors (Lliçó 8). Si necessites continuïtat, dóna-li el context.

**No especificar el format:** Si no li dius com vols la resposta, el model triarà ell — i potser no és el que esperaves.

## Prompt engineering: no cal ser programador

El terme **prompt engineering** sona molt tècnic, però simplement vol dir "l'art d'escriure bons prompts". No és programació, no requereix coneixements tècnics — és comunicació clara i precisa.

Algunes tècniques útils:

**Few-shot prompting:** Donar-li exemples del que vols. "Transforma aquests títols en slugs per a URLs. Exemple: 'Què és la IA?' → 'que-es-la-ia'. Ara fes-ho amb: 'Com funciona un LLM?'"

**Chain of thought:** Demanar-li que raoni pas a pas. "Abans de donar la resposta final, explica el teu raonament pas a pas." Això millora la precisió en problemes complexos.

**Iteració:** No esperis que el primer prompt sigui perfecte. Prova, mira el resultat, i ajusta. "Això és massa llarg, resumeix-ho a la meitat" o "El to és massa formal, fes-ho més proper".

## El prompt és la interfície

Pensa en el prompt com la **interfície** entre tu i el model. Igual que amb qualsevol eina, la qualitat del resultat depèn tant de l'eina com de la persona que la fa servir.

Un model excel·lent amb un prompt dolent donarà un resultat mediocre. Un model decent amb un prompt excel·lent pot donar un resultat sorprenentment bo.

Quan configuris el teu agent amb OpenClaw, el **system prompt** (les instruccions permanents de l'agent) serà la peça més important de tota la configuració. Dedicar-hi temps val molt la pena.

## Conceptes clau d'avui

- **Prompt:** El text que envies al model — pregunta, instruccions, context
- **Les 4 peces:** Rol + Context + Instrucció + Format de sortida
- **Prompt engineering:** L'art d'escriure prompts efectius (no requereix programació)
- **Few-shot:** Donar exemples al model perquè entengui el format desitjat
- **Chain of thought:** Demanar al model que raoni pas a pas per millorar la precisió
- **Iteració:** Ajustar el prompt basant-se en el resultat fins a obtenir el que vols

---

*Propera lliçó: Comencem la Setmana 3 — Què és un provider? Qui et dona accés als models.*
