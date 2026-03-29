---
title: "Lección 22: Instalación de OpenClaw paso a paso"
date: 2026-04-29
slug: "leccion-22-instalacion-openclaw"
draft: false
tags: ["openclaw", "instalacion", "tutorial"]
categories: ["OpenClaw"]
summary: "Guía práctica de instalación en Mac, Linux y Windows (WSL). Del cero al primer 'hola' con tu agente."
ShowToc: true
weight: 22
---

## Hoy instalamos

Esta es una lección práctica. Sigue los pasos en tu ordenador mientras lees. Al final, tendrás OpenClaw instalado y listo para configurar.

## Paso 1: Instalar Node.js

**macOS:** `brew install node` o descarga desde nodejs.org.

**Linux (Ubuntu/Debian):** `curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -` seguido de `sudo apt-get install -y nodejs`

**Windows:** Primero necesitas WSL. Abre PowerShell como administrador y ejecuta `wsl --install`. Reinicia. Luego sigue las instrucciones de Linux dentro de WSL.

**Verificar:** `node --version` y `npm --version`

## Paso 2: Instalar OpenClaw

`npm install -g openclaw`

Verificar: `openclaw --version`

## Paso 3: Primer test

Ejecuta `openclaw`. Si es la primera vez, te pedirá configurar un provider y modelo. De momento puedes cancelar (Ctrl+C) — lo configuraremos en detalle en la lección 23.

## Estructura de archivos

```
~/.openclaw/
├── openclaw.json        # Configuración principal
├── workspace/
│   └── system-prompt.md # Instrucciones del agente
├── skills/              # Skills instaladas
└── memory/              # Base de datos de memoria
```

## Errores comunes

**"npm: command not found":** Node.js no está instalado. **"Permission denied":** Prueba con sudo. **"openclaw: command not found":** Revisa el PATH de npm.

## Conceptos clave de hoy

- **Node.js:** El entorno de ejecución donde corre OpenClaw
- **npm:** El gestor de paquetes de Node.js
- **`~/.openclaw/`:** Directorio de configuración
- **`openclaw.json`:** Archivo central de configuración
- **WSL:** Windows Subsystem for Linux — necesario para OpenClaw en Windows

---

*Próxima lección: Configurar tu primer modelo y provider.*
