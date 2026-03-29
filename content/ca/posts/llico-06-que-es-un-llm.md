---
title: "Lliçó 6: Què és un LLM? El model que entén (i genera) text"
date: 2026-04-07
slug: "llico-06-que-es-un-llm"
draft: false
tags: ["llm", "basics", "model-de-llenguatge"]
categories: ["LLM"]
summary: "Definim LLM, entenem per què és diferent d'una cerca a Google, i descobrim com funciona la generació de text."
ShowToc: true
weight: 6
---

## Setmana 2: entrem al cor de la revolució

Si la Setmana 1 va ser entendre el "mar" de la IA en general, ara ens capbussem en la tecnologia específica que ha causat l'explosió actual: els **Large Language Models** (LLM) — Models Grans de Llenguatge.

Quan fas servir ChatGPT, Claude, Gemini o qualsevol chatbot modern, estàs parlant amb un LLM. Quan un agent d'IA escriu, resumeix, tradueix o programa, ho fa amb un LLM. Entendre què és i com funciona un LLM és la clau per entendre tot el que vindrà després.

## Què és un LLM?

Un LLM és un model d'IA entrenat amb quantitats massives de text que pot **entendre i generar** llenguatge humà.

Desglossem el nom:

- **Large (Gran):** Té bilions de paràmetres i ha estat entrenat amb bilions de paraules
- **Language (Llenguatge):** El seu domini és el text — entendre'l i produir-ne
- **Model:** Com hem vist a la Lliçó 4, és un "cervell" entrenat

Un LLM no és una base de dades que busca respostes. No és un buscador com Google. No copia i enganxa text de cap lloc. El que fa és **generar text nou** paraula per paraula, basant-se en patrons que ha après durant l'entrenament.

## Com funciona? La predicció de la paraula següent

El mecanisme base d'un LLM és sorprenentment simple d'entendre: **prediu la paraula següent.**

Si li dones el text "El gat va pujar a la...", el model calcula les probabilitats de totes les paraules possibles que podrien anar a continuació i tria la més probable. "Taula"? "Teulada"? "Cadira"? Basant-se en tot el text que ha vist durant l'entrenament, decideix quina paraula té més sentit.

Però no ho fa una vegada — ho fa per cada paraula. Genera la primera paraula, la suma al text, i llavors prediu la segona. I la tercera. I així successivament, paraula per paraula, fins que la resposta és completa.

Pot semblar un mecanisme massa simple per produir textos coherents, raonaments complexos i respostes útils. Però quan entrenes un model amb bilions de paraules i li dones bilions de paràmetres, la predicció de "la paraula següent" es converteix en una capacitat emergent molt més potent del que ningú esperava.

## Un LLM no és un buscador

Aquesta és una confusió molt comuna i val la pena aclarir-la bé.

Quan busques a **Google**, el buscador recorre un índex de pàgines web i et mostra les que millor encaixen amb la teva cerca. La informació ve de pàgines web reals que existeixen en algun servidor.

Quan preguntes a un **LLM**, el model genera una resposta nova basada en patrons que va aprendre durant l'entrenament. No busca a internet (tret que tingui cerca web activada). No consulta cap base de dades en temps real. Produeix text nou basant-se en la probabilitat estadística de les paraules.

Això explica dues coses importants:

1. **Per què els LLM poden "inventar-se" coses:** Si el model prediu que la paraula següent més probable és X, la posarà — encara que sigui incorrecta. Això es coneix com a **al·lucinació**.

2. **Per què els LLM no sempre tenen informació actualitzada:** El model sap el que havia al text d'entrenament, que té una data de tall. No sap què ha passat després d'aquella data, tret que tingui accés a cerca web.

## Què pot fer un LLM?

La versatilitat dels LLM és el que els fa tan revolucionaris. Un sol model pot:

**Generar text:** Escriure articles, emails, cartes, històries, poemes, resums.

**Respondre preguntes:** Des de preguntes simples fins a raonaments complexos de múltiples passos.

**Traduir:** Convertir text entre idiomes, sovint amb qualitat sorprenentment bona.

**Resumir:** Condensar textos llargs en resums breus mantenint les idees principals.

**Programar:** Escriure codi en pràcticament qualsevol llenguatge de programació.

**Analitzar:** Examinar dades, text o arguments i donar-ne una interpretació.

**Conversar:** Mantenir diàlegs coherents sobre qualsevol tema, recordant el context de la conversa.

Tot això amb el **mateix model**, sense canviar-lo ni reentrenar-lo. Simplement canvies el que li demanes (el prompt) i el model adapta la seva sortida.

## Què NO pot fer un LLM?

Igual d'important que saber què pot fer és saber què no:

**No "sap" res amb certesa:** Prediu text probable, no afirma veritats. Pot generar informació incorrecta amb total convicció.

**No té experiències ni emocions:** Quan un LLM diu "entenc com et sents", està generant la frase que estadísticament segueix el teu missatge. No sent res.

**No pensa com un humà:** El procés intern és càlcul matemàtic de probabilitats, no raonament conscient. Pot simular raonament de manera impressionant, però el mecanisme subjacent és fonamentalment diferent.

**No accedeix a internet** (per defecte): Tret que tingui eines de cerca web activades, no pot consultar informació en temps real.

**No aprèn de les teves converses:** Cada conversa comença de zero. El model no es modifica quan parles amb ell. (Alguns sistemes afegeixen memòria per sobre del model, però el model base no canvia.)

## Per què ara i no abans?

Els models de llenguatge existeixen des de fa dècades. El que ha canviat és l'escala:

- **Més dades:** Internet ha generat bilions de textos accessibles per a l'entrenament
- **Més potència:** Les GPUs modernes permeten entrenar models amb centenars de bilions de paràmetres
- **Millors arquitectures:** El Transformer (2017) va fer possible processar text de manera molt més eficient
- **RLHF:** El Reinforcement Learning from Human Feedback va fer que els models fossin molt millors seguint instruccions i generant respostes útils

La combinació d'aquests quatre factors és el que ha produït l'explosió que estem vivint.

## Conceptes clau d'avui

- **LLM (Large Language Model):** Model d'IA entrenat amb text massiu per entendre i generar llenguatge
- **Predicció de la paraula següent:** El mecanisme base dels LLM — genera text predient quina paraula ve després
- **Al·lucinació:** Quan un LLM genera informació incorrecta amb aparent confiança
- **RLHF:** Tècnica que fa que els models siguin millors seguint instruccions humanes

---

*Propera lliçó: Tokens — com un LLM "llegeix" el text.*
