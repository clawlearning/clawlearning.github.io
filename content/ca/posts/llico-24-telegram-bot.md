---
title: "Lliçó 24: Connectar OpenClaw a Telegram"
date: 2026-05-01
slug: "llico-24-telegram-bot"
draft: false
tags: ["openclaw", "telegram", "bot", "tutorial"]
categories: ["OpenClaw"]
summary: "Crea un bot de Telegram, connecta'l a OpenClaw, i parla amb el teu agent des del mòbil."
ShowToc: true
weight: 24
---

## L'agent al teu mòbil

Fins ara has interactuat amb OpenClaw des del terminal. Funciona, però no és pràctic per al dia a dia. El que volem és poder parlar amb l'agent des del mòbil, en qualsevol moment i lloc. Telegram és la solució perfecta per a això.

## Pas 1: Crear el bot a Telegram

Telegram permet a qualsevol persona crear un bot. El procés és sorprenentment senzill:

1. Obre Telegram i busca **@BotFather** (és el bot oficial de Telegram per crear bots)
2. Envia-li el missatge `/newbot`
3. Et demanarà un **nom** per al bot (el nom visible, per exemple: "El Meu Agent IA")
4. Et demanarà un **username** per al bot (ha d'acabar en "bot", per exemple: `elmeuagent_bot`)
5. BotFather et donarà un **token** — una cadena llarga de números i lletres

Copia aquest token. És la "clau" que permet a OpenClaw controlar el bot.

## Pas 2: Configurar Telegram a OpenClaw

Afegeix la configuració de Telegram al teu `openclaw.json`:

```json
{
  "telegram": {
    "token": "EL_TOKEN_DEL_BOTFATHER",
    "allowedUsers": ["EL_TEU_TELEGRAM_ID"]
  }
}
```

**El token** és el que t'ha donat BotFather.

**allowedUsers** és una llista d'IDs d'usuari de Telegram que poden parlar amb el bot. Això és important per seguretat — sense això, qualsevol persona que trobi el teu bot podria usar-lo (i gastar els teus tokens).

Per obtenir el teu Telegram ID, busca @userinfobot a Telegram i envia-li `/start`. Et dirà el teu ID numèric.

## Pas 3: Arrencar l'agent

Executa OpenClaw amb el mode Telegram:
```
openclaw --telegram
```

Si tot està ben configurat, veuràs un missatge indicant que el bot està actiu. Ves a Telegram, busca el teu bot pel username que li vas posar, i envia-li un missatge.

Si respon, felicitats — tens un agent d'IA al teu mòbil.

## Comandes bàsiques

OpenClaw amb Telegram suporta algunes comandes especials:

- `/new` — Inicia una conversa nova (esborra el context anterior)
- `/help` — Mostra les comandes disponibles

La comanda `/new` és important: recorda que el context window s'omple a mesura que parles. Quan notis que l'agent perd el fil o es torna lent, un `/new` neteja el context i recomença.

## Mantenir el bot actiu 24/7

Si executes `openclaw --telegram` al teu ordinador, el bot funciona mentre l'ordinador estigui encès i el terminal obert. Quan tanques, el bot s'atura.

Per a disponibilitat 24/7, necessites una de dues opcions:

**Screen o tmux (solució bàsica):** Eines que mantenen el procés actiu encara que tanquis el terminal.
```
tmux new -s openclaw
openclaw --telegram
# Ctrl+B, després D per desconnectar (el bot segueix actiu)
# tmux attach -t openclaw per reconnectar
```

**Servei systemd (solució robusta):** Configures OpenClaw com un servei del sistema que arrenca automàticament i es reinicia si falla. Ideal per a un VPS o servidor dedicat.

## Consells de seguretat

**Restringeix l'accés:** Sempre configura `allowedUsers` amb els IDs dels usuaris autoritzats. Un bot obert és un bot que qualsevol pot explotar.

**No comparteixis el token:** El token del bot és com una contrasenya. Si algú el té, pot controlar el teu bot.

**Monitoritza l'ús:** Especialment al principi, revisa les converses per assegurar-te que el bot es comporta com esperes.

## Conceptes clau d'avui

- **@BotFather:** El bot oficial de Telegram per crear bots nous
- **Token:** La clau d'accés que identifica el teu bot
- **allowedUsers:** Llista d'IDs de Telegram autoritzats a usar el bot
- **`/new`:** Neteja el context i comença una conversa nova
- **tmux/screen:** Eines per mantenir el bot actiu al tancar el terminal

---

*Propera lliçó: Donar personalitat al teu agent — el system prompt.*
