---
title: "Lliçó 22: Instal·lació d'OpenClaw pas a pas"
date: 2026-04-29
slug: "llico-22-installacio-openclaw"
draft: false
tags: ["openclaw", "installacio", "tutorial"]
categories: ["OpenClaw"]
summary: "Guia pràctica d'instal·lació a Mac, Linux i Windows (WSL). Del zero al primer 'hola' amb el teu agent."
ShowToc: true
weight: 22
---

## Avui instal·lem

Aquesta és una lliçó pràctica. Segueix els passos al teu ordinador mentre llegeixes. Al final, tindràs OpenClaw instal·lat i llest per configurar.

## Pas 1: Instal·lar Node.js

OpenClaw funciona sobre Node.js. Si no el tens instal·lat:

**macOS:**
Obre el Terminal i executa:
```
brew install node
```
Si no tens Homebrew: ves a nodejs.org, descarrega l'instal·lador per a Mac, i segueix les instruccions.

**Linux (Ubuntu/Debian):**
```
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
```

**Windows:**
Primer necessites WSL (Windows Subsystem for Linux). Si no el tens:
1. Obre PowerShell com a administrador
2. Executa: `wsl --install`
3. Reinicia l'ordinador
4. Obre Ubuntu des del menú d'inici
5. Segueix les instruccions de Linux dins WSL

**Verificar la instal·lació:**
```
node --version
npm --version
```
Has de veure versions (per exemple, v20.x.x i 10.x.x). Si veus errors, Node.js no s'ha instal·lat correctament.

## Pas 2: Instal·lar OpenClaw

Un sol comanda:
```
npm install -g openclaw
```

Això instal·la OpenClaw globalment al teu sistema. Verificar:
```
openclaw --version
```

## Pas 3: Primer test

Executa:
```
openclaw
```

Si és la primera vegada, OpenClaw et demanarà configurar un provider i un model. De moment, pots cancel·lar (Ctrl+C) — ho configurarem en detall a la lliçó 23.

Si veus el prompt d'OpenClaw, la instal·lació és correcta.

## Estructura de fitxers

OpenClaw guarda la seva configuració a `~/.openclaw/`. Dins hi trobaràs:

```
~/.openclaw/
├── openclaw.json        # Configuració principal (providers, models)
├── workspace/           # Fitxers del workspace actiu
│   └── system-prompt.md # Les instruccions de l'agent
├── skills/              # Skills instal·lades
└── memory/              # Base de dades de memòria
```

El fitxer més important és `openclaw.json` — aquí és on definiràs quin model usa l'agent, quin provider, i com es comporta.

## Errors comuns

**"npm: command not found":** Node.js no està instal·lat. Torna al Pas 1.

**"Permission denied":** A Linux/Mac, potser necessites `sudo npm install -g openclaw`. A WSL, executa la comanda sense sudo però assegura't que npm té els permisos correctes.

**"openclaw: command not found" després d'instal·lar:** El path global de npm no està al teu PATH. Executa `npm config get prefix` per veure on s'ha instal·lat, i afegeix `/bin` al teu PATH.

**Versió de Node.js massa antiga:** OpenClaw requereix Node.js 18+. Si tens una versió anterior, actualitza Node.js.

## Conceptes clau d'avui

- **Node.js:** L'entorn d'execució on corre OpenClaw (prerequisit)
- **npm:** El gestor de paquets de Node.js (s'usa per instal·lar OpenClaw)
- **`~/.openclaw/`:** Directori de configuració d'OpenClaw
- **`openclaw.json`:** Fitxer central de configuració
- **WSL:** Windows Subsystem for Linux — necessari per usar OpenClaw a Windows

---

*Propera lliçó: Configurar el teu primer model i provider.*
