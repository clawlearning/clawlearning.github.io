---
title: "Lliçó 20: Frameworks d'agents — OpenClaw, LangChain i altres"
date: 2026-04-25
slug: "llico-20-frameworks-agents"
draft: false
tags: ["frameworks", "openclaw", "langchain"]
categories: ["Agents"]
summary: "Les opcions per muntar un agent: des de les més simples fins a les més complexes. Quin triar segons el teu nivell."
ShowToc: true
weight: 20
---

## Què és un framework d'agents?

Un framework és el "kit de muntatge" de l'agent. Proporciona l'estructura que connecta el model, les eines, la memòria i la interfície sense que tu hagis de programar-ho des de zero.

Sense framework, muntar un agent requereix escriure centenars o milers de línies de codi: gestionar l'API del model, implementar el cicle d'eines, construir la memòria, connectar Telegram... Amb un framework, tot això ve fet i tu només configures.

Hi ha molts frameworks al mercat, cadascun amb la seva filosofia. Vegem els principals.

## OpenClaw: simplicitat per a tothom

**OpenClaw** és un framework de codi obert dissenyat per ser simple i directe. La seva filosofia és que qualsevol persona amb coneixements bàsics d'informàtica pugui tenir un agent funcional en minuts.

**Punts forts:**

- Instal·lació ràpida (un sol paquet npm)
- Configuració per fitxer JSON — no cal programar
- Suport natiu per Telegram
- Skills instal·lables des de Clawhub
- Memòria amb embeddings locals
- Cron jobs integrats per a automatitzacions
- Comunitat activa i creixent

**Ideal per a:** Usuaris que volen un agent personal funcional sense complicar-se. Sysadmins, entusiastes de la tecnologia, gent que vol automatitzar el seu dia a dia.

**Limitació:** No està dissenyat per a desplegaments empresarials masssius ni per a fluxos d'agent molt complexos amb branching i loops sofisticats.

## LangChain: el navaja suís

**LangChain** és probablement el framework més conegut i amb més funcionalitats. Ofereix una quantitat enorme de components: cadenes de prompts, agents, memòria, integració amb centenars de serveis, parsing de documents...

**Punts forts:**

- Ecosistema enorme amb centenars d'integracions
- Documentació extensa
- Suporta fluxos d'agent complexos
- LangSmith per a monitorització i debugging
- Comunitat molt gran

**Ideal per a:** Desenvolupadors que necessiten control total i fluxos complexos.

**Limitació:** La corba d'aprenentatge és pronunciada. La quantitat d'opcions pot ser aclaparadora per a principiants. Requereix saber programar en Python o JavaScript.

## CrewAI: agents que col·laboren

**CrewAI** se centra en **sistemes multi-agent**: diversos agents que treballen junts, cadascun amb un rol específic, coordinant-se per completar tasques complexes.

Per exemple, pots tenir un agent "investigador" que busca informació, un agent "escriptor" que redacta el contingut, i un agent "editor" que revisa la qualitat. CrewAI coordina la col·laboració entre ells.

**Ideal per a:** Fluxos de treball complexos que es beneficien de la divisió de tasques entre agents especialitzats.

**Limitació:** Més complex de configurar que un agent individual. Consumeix més tokens (múltiples models treballant).

## AutoGen (Microsoft): converses entre agents

**AutoGen** és el framework de Microsoft per a sistemes multi-agent. La seva idea central és que els agents es comuniquin entre ells en forma de conversa — un agent proposa, l'altre revisa, un tercer executa.

**Ideal per a:** Investigació, fluxos d'aprovació, i tasques que es beneficien de "discussió" entre agents.

## Altres opcions

**Semantic Kernel (Microsoft):** Framework més empresarial, integrat amb l'ecosistema Azure.

**Haystack:** Especialitzat en RAG i cerca. Molt bo per a agents que treballen amb grans volums de documents.

**Pydantic AI:** Framework lleuger i tipat per a Python, dissenyat per a aplicacions en producció.

## Com triar?

La decisió depèn del teu perfil:

**Si no saps programar** i vols un agent personal → **OpenClaw**. Configuració per fitxer, instal·lació senzilla, Telegram natiu.

**Si saps Python** i vols un agent amb més control → **LangChain** o **Pydantic AI**.

**Si necessites múltiples agents coordinats** → **CrewAI** o **AutoGen**.

**Si ets una empresa** amb necessitats complexes → **LangChain** o **Semantic Kernel**.

Per a aquest curs, treballarem amb **OpenClaw** perquè és el que millor s'adapta al perfil d'algú que comença: funcional, directe, i sense necessitat de programar.

## Tots comparteixen els mateixos fonaments

Independentment del framework que triïs, tots funcionen amb els mateixos principis que has après en aquest curs:

- Usen un **LLM** com a cervell
- Es connecten a **providers** via **API**
- Donen **eines/skills** al model
- Gestionen **memòria** (de diverses maneres)
- Reben input per **interfícies** (Telegram, web, etc.)

Si entens els fonaments, canviar de framework és qüestió d'adaptar-se a la seva configuració — no d'aprendre conceptes nous.

## Conceptes clau d'avui

- **Framework:** Kit de muntatge que connecta model + eines + memòria + interfície
- **OpenClaw:** Simple, configurable, ideal per a no-programadors
- **LangChain:** Potent, versàtil, requereix programació
- **CrewAI / AutoGen:** Multi-agent, per a fluxos complexos
- **Tots usen els mateixos fonaments:** LLM + Provider + Tools + Memòria

---

*Propera lliçó: Comencem la Setmana 5 — Què és OpenClaw i per què l'hem triat.*
