---
title: "Lliçó 28: Múltiples agents — quan un no és suficient"
date: 2026-05-07
slug: "llico-28-multiples-agents"
draft: false
tags: ["openclaw", "multi-agent", "arquitectura"]
categories: ["OpenClaw"]
summary: "Quan té sentit tenir més d'un agent, com organitzar-los, i com combinar models cars i barats intel·ligentment."
ShowToc: true
weight: 28
---

## Per què més d'un agent?

Quan comences, un sol agent és suficient. Però a mesura que li dones més responsabilitats, arribes a un punt on un sol agent no és la millor solució.

Imagina un assistent humà al qual li demanes que faci de secretari, comptable, investigador, i community manager alhora. Podria fer-ho tot, però no tot bé. La mateixa lògica s'aplica als agents.

## Raons per separar agents

**Especialització del model:** Diferents tasques requereixen diferents models. Un briefing diari de notícies no necessita el model més potent — un model gratuït ho fa bé. Però una anàlisi complexa d'inversions necessita el millor model disponible. Si tens un sol agent, o li poses el model car (i malbarates diners en tasques simples) o li poses el barat (i la qualitat pateix en tasques complexes).

**Cost:** Separar per model et permet assignar el model car només a les tasques que el necessiten. Les tasques rutinàries les fa el model barat o gratuït. El cost total és molt inferior al d'usar el model car per a tot.

**Disponibilitat:** Si un agent falla (per límit d'API, error del provider, etc.), els altres segueixen funcionant. No poses tots els ous al mateix cistell.

**Organització:** Cada agent pot tenir el seu propi system prompt, les seves skills, i la seva memòria. Això evita conflictes i fa que cada agent sigui expert en el seu domini.

## Exemple pràctic: dos agents coordinats

Una configuració molt funcional és tenir dos agents:

**Agent primari (qualitat):** Usa un model potent (Claude Sonnet, GPT-4). Per a conversa interactiva, decisions importants, anàlisi complexa, i tasques que requereixen raonament. Costa més per token, però el fas servir amb moderació.

**Agent secundari (volum):** Usa un model gratuït o barat (Kimi K2.5 via NVIDIA NIM, LLaMA via Groq). Per a tasques automàtiques, briefings, monitorització, traduccions. Costa poc o res per token, i pot fer moltes peticions sense preocupar-se pel cost.

Cada agent té el seu propi bot de Telegram, el seu propi system prompt, i les seves pròpies skills.

## Workspaces a OpenClaw

OpenClaw suporta **workspaces** — entorns separats amb configuració independent. Cada workspace pot tenir un model diferent, skills diferents, i un system prompt diferent.

Això permet tenir múltiples "agents" en una mateixa instal·lació d'OpenClaw, cadascun amb la seva personalitat i capacitats.

## La combinació intel·ligent

La clau no és tenir molts agents — és tenir els agents **correctes** per a les tasques **correctes**.

Preguntes per decidir si necessites un segon agent:

- Tinc tasques rutinàries que malbarataran tokens del model principal? → Sí → Agent secundari barat
- Necessito que alguna tasca funcioni 24/7 independentment? → Sí → Agent separat
- Les meves tasques automàtiques tenen requisits molt diferents de les interactives? → Sí → Separar

Si la resposta a totes és "no", un sol agent ben configurat és suficient.

## Conceptes clau d'avui

- **Separar per cost:** Model car per a qualitat, model barat per a volum
- **Separar per funció:** Cada agent expert en el seu domini
- **Workspaces:** Entorns separats dins d'OpenClaw amb configuració independent
- **No complicar-se:** Si un agent és suficient, un agent és millor que dos

---

*Propera lliçó: Seguretat i privacitat — el teu agent al món real.*
