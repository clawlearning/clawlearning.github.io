---
title: "Lliçó 27: Automatitzacions — que l'agent treballi sol"
date: 2026-05-06
slug: "llico-27-automatitzacions-cron"
draft: false
tags: ["openclaw", "cron", "automatitzacio"]
categories: ["OpenClaw"]
summary: "Configura tasques automàtiques perquè el teu agent faci coses sense que tu li ho demanis: briefings, alertes, monitorització."
ShowToc: true
weight: 27
---

## D'agent reactiu a agent proactiu

Fins ara, el teu agent espera que li parlis. Tu envies un missatge, ell respon. Però el veritable poder d'un agent és quan treballa **sense que li ho demanis**.

Imagina que cada matí a les 7 reps un missatge de Telegram amb el resum de notícies del teu sector. O que l'agent revisa preus cada hora i t'avisa quan baixen. O que genera un informe setmanal cada divendres. Tot automàtic, sense intervenció teva.

Això es fa amb **cron jobs** — tasques programades.

## Què és un cron job?

Un **cron job** és una tasca que s'executa automàticament a hores programades. El nom ve de "chronos" (temps en grec) i és un sistema present a tots els sistemes Linux/Mac des de fa dècades.

Un cron job defineix:
- **Què** ha de fer (la tasca)
- **Quan** ho ha de fer (la programació)

## Cron a OpenClaw

OpenClaw permet configurar cron jobs directament al `openclaw.json`. Cada cron job és un prompt que s'envia al model a l'hora programada, i la resposta es publica al Telegram.

Exemple de configuració:

```json
{
  "cron": [
    {
      "schedule": "0 7 * * 1-5",
      "prompt": "Busca les 5 notícies més rellevants sobre IA d'avui. Fes un resum breu de cada una en català.",
      "timezone": "Europe/Madrid"
    }
  ]
}
```

Això envia un briefing de notícies cada dia laborable a les 7 del matí.

## Entendre la sintaxi cron

La programació usa la sintaxi cron estàndard: cinc camps separats per espais.

```
┌───── minut (0-59)
│ ┌───── hora (0-23)
│ │ ┌───── dia del mes (1-31)
│ │ │ ┌───── mes (1-12)
│ │ │ │ ┌───── dia de la setmana (0-7, on 0 i 7 = diumenge)
│ │ │ │ │
* * * * *
```

Exemples pràctics:

- `0 7 * * 1-5` — Cada dia laborable a les 7:00
- `30 9 * * *` — Cada dia a les 9:30
- `0 */4 * * *` — Cada 4 hores
- `0 22 * * 5` — Cada divendres a les 22:00
- `0 8 1 * *` — El primer dia de cada mes a les 8:00

## Idees d'automatitzacions

**Briefing matinal:** Resum de notícies del teu sector, temps, i tasques pendents. Ideal per començar el dia informat.

**Monitorització de preus:** Revisa periòdicament preus de productes o serveis i t'avisa quan baixen d'un llindar.

**Resum setmanal:** Cada divendres, un informe resumint les notícies o tendències més importants de la setmana.

**Recordatoris intel·ligents:** No un simple recordatori, sinó un que busca informació rellevant. Per exemple: "Recorda'm les reunions d'avui i suggereix punts de preparació basant-te en emails recents."

**Vigilància de competència:** Busca mencions de la teva empresa o productes a internet i t'avisa de novetats.

## Controlar el consum de tokens

Les automatitzacions gasten tokens sense que tu les "vegis" — el cron s'executa sol. Si no tens cura, la factura pot créixer ràpidament.

Consells:

**Limita la sortida:** Al prompt del cron, especifica la longitud màxima. "Resum en màxim 500 caràcters" evita respostes quilomètriques.

**Freqüència raonable:** No cal que tot s'executi cada hora. Un briefing diari és suficient per a la majoria de coses.

**Model adequat:** Per a tasques automàtiques de rutina (resums, traduccions), usa un model barat o gratuït. Reserva els models cars per a decisions importants.

**Monitoritza:** Revisa periòdicament el consum de tokens i ajusta si cal.

## Telegram i les limitacions

Telegram té un límit de **4096 caràcters** per missatge. Si la resposta del cron és més llarga, es tallarà o donarà error.

Solucions:
- Limita la sortida al prompt (especifica "màxim 3500 caràcters")
- Usa format telegràfic (frases curtes, sense frases de cortesia)
- Si necessites contingut llarg, fes que l'agent ho guardi en un fitxer i t'enviï el resum

## Conceptes clau d'avui

- **Cron job:** Tasca que s'executa automàticament a hores programades
- **Sintaxi cron:** 5 camps (minut, hora, dia mes, mes, dia setmana) que defineixen la programació
- **Briefings automàtics:** L'ús més comú — rebre informació resumida sense demanar-la
- **Control de tokens:** Limita la sortida, tria el model adequat, i monitoritza el consum
- **Límit Telegram:** 4096 caràcters per missatge — tingueu-ho en compte als prompts

---

*Propera lliçó: Múltiples agents — quan un no és suficient.*
