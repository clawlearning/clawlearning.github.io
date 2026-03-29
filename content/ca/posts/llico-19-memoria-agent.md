---
title: "Lliçó 19: La memòria d'un agent — com recorda (i oblida)"
date: 2026-04-24
slug: "llico-19-memoria-agent"
draft: false
tags: ["memoria", "embeddings", "rag"]
categories: ["Agents"]
summary: "Els tipus de memòria d'un agent, què són els embeddings, com funciona RAG, i per què la memòria és el problema més difícil."
ShowToc: true
weight: 19
---

## El problema de la memòria

Recorda la Lliçó 8: un LLM no recorda res entre converses. Cada interacció comença de zero. Però un agent útil necessita recordar coses: qui ets, què has parlat, quines preferències tens, quines tasques estan pendents.

La memòria és el que transforma un chatbot genèric en un assistent personal que et coneix. I és, possiblement, el problema tècnic més difícil dels agents actuals.

## Memòria a curt termini: el context window

La forma més bàsica de memòria és la **finestra de context** del model. Dins d'una mateixa conversa, l'agent "recorda" tot el que s'ha dit perquè l'historial de missatges es reenvia al model amb cada petició.

Si li dius "Em dic Joan" al primer missatge i després li preguntes "Com em dic?", l'agent ho sap perquè "Em dic Joan" segueix dins el context window.

Limitacions:

- **Mida finita:** Quan la conversa supera el context window, els missatges antics desapareixen
- **Cost creixent:** Cada missatge anterior s'envia al model de nou, consumint tokens
- **Desapareix entre converses:** Quan obres un xat nou, l'historial anterior no hi és

## Memòria a llarg termini: guardar informació fora del model

Per recordar entre converses, l'agent necessita un sistema de memòria extern — una base de dades on guardar informació rellevant i recuperar-la quan calgui.

El flux és:

1. Durant una conversa, l'agent detecta informació important (el teu nom, preferències, decisions)
2. Guarda aquesta informació en una base de dades
3. En futures converses, consulta la base de dades per recuperar context rellevant
4. Injecta aquesta informació al prompt perquè el model la "recordi"

El model en si no canvia — el truc és alimentar-lo amb la informació correcta en cada conversa.

## Embeddings: la clau de la cerca semàntica

Quan l'agent té molta informació guardada (centenars de converses, documents, notes), com sap quina part és rellevant per a la pregunta actual?

Aquí entren els **embeddings**. Un embedding és una representació numèrica del significat d'un text. Converteix paraules i frases en vectors de números que capturen el seu significat.

Per què és útil? Perquè amb embeddings pots fer **cerca semàntica** — buscar per significat, no per paraules exactes.

Exemple: si l'agent busca informació sobre "cotxe elèctric" i a la base de dades hi ha guardada la frase "vehicles amb bateria", la cerca per paraules exactes no trobaria res (no hi ha "cotxe" ni "elèctric"). Però la cerca per embeddings sí, perquè els vectors numèrics de "cotxe elèctric" i "vehicles amb bateria" estan propers en l'espai semàntic — tenen significats similars.

Això és el que fa que la memòria d'un agent sigui "intel·ligent": no busca coincidències literals, sinó conceptes relacionats.

## RAG: Retrieval Augmented Generation

**RAG** és una tècnica que combina la cerca d'informació amb la generació de text. L'acrònim vol dir Retrieval Augmented Generation — Generació Augmentada per Recuperació.

El procés és:

1. L'agent rep una pregunta
2. Abans de respondre, busca informació rellevant a la seva base de dades (retrieval)
3. Afegeix la informació trobada al prompt del model (augmented)
4. El model genera la resposta tenint en compte la informació recuperada (generation)

RAG és com donar-li al model una "xuleta" personalitzada per a cada pregunta. El model no necessita "saber" la informació — la rep en el moment de respondre.

Aquesta tècnica és fonamental per als agents perquè permet que "sàpiguen" coses que no estan al seu entrenament: la teva informació personal, documents de la teva empresa, converses anteriors.

## Tipus de memòria en la pràctica

Els frameworks d'agents solen implementar diversos tipus de memòria:

**Memòria de conversa:** Guarda l'historial de la conversa actual. La més bàsica.

**Memòria de fets:** Extreu i guarda fets concrets de les converses: "L'usuari viu a Barcelona", "L'usuari treballa en IT", "L'usuari prefereix respostes en català". Aquests fets es recuperen automàticament en futures converses.

**Memòria de documents:** Processa documents que li comparteixes i els guarda indexats per a consulta futura.

**Memòria de tasques:** Recorda tasques pendents, compromisos, i seguiments.

No tots els frameworks implementen tots els tipus. OpenClaw, per exemple, usa embeddings locals per a la cerca semàntica de memòria, amb models com EmbeddingGemma que s'executen localment sense enviar dades a cap servei extern.

## Per què és el problema més difícil

La memòria sembla senzilla en teoria — guardar i recuperar informació. Però en la pràctica és molt més complex:

**Què guardar?** No tot el que es diu en una conversa és rellevant per al futur. L'agent ha de decidir què val la pena recordar i què no.

**Quan oblidar?** La informació caduca. Si fa un any vas dir que treballaves a l'empresa X i ara treballes a l'empresa Y, l'agent ha d'actualitzar-se.

**Quant recuperar?** Si l'agent recupera massa informació, omple el context window i no queda espai per a la resposta. Si en recupera massa poca, li falta context.

**Privacitat:** La memòria conté informació personal sensible. On es guarda? Qui hi té accés? Què passa si es compromet?

Aquests problemes no estan completament resolts — la memòria és una àrea activa d'investigació i millora en tots els frameworks d'agents.

## Conceptes clau d'avui

- **Memòria a curt termini:** El context window de la conversa actual (limitada, desapareix entre converses)
- **Memòria a llarg termini:** Base de dades externa que guarda informació entre converses
- **Embeddings:** Representació numèrica del significat del text — permet cerca semàntica
- **Cerca semàntica:** Buscar per significat, no per paraules exactes
- **RAG:** Recuperar informació rellevant i injectar-la al prompt abans de generar la resposta

---

*Propera lliçó: Frameworks d'agents — OpenClaw, LangChain i altres.*
