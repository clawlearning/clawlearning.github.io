---
title: "Lliçó 14: Models locals — executar un LLM al teu ordinador amb Ollama"
date: 2026-04-17
slug: "llico-14-models-locals-ollama"
draft: false
tags: ["ollama", "local", "hardware", "models"]
categories: ["Infraestructura"]
summary: "Què vol dir executar un model localment, quan té sentit, com funciona Ollama, i quins models pots córrer segons el teu hardware."
ShowToc: true
weight: 14
---

## Què vol dir "model local"?

Fins ara hem parlat de models que s'executen als servidors d'algú altre — OpenAI, Anthropic, Google. Tu envies text per internet, ells el processen, i et retornen la resposta.

Un **model local** és exactament el contrari: descarregues el model al teu ordinador i l'executes tu. El text no surt de la teva màquina. No necessites internet. No pagues per token.

És com la diferència entre escoltar música en streaming (Spotify) i tenir els MP3 al teu disc dur. Amb streaming depens de la connexió i del servei. Amb els fitxers locals, la música és teva i funciona sempre.

## Quan té sentit un model local?

**Té sentit quan:**

- Vols privacitat total — les dades mai surten del teu ordinador
- Vols cost zero per ús — un cop descarregat, no pagues res
- Necessites funcionar sense internet
- Vols experimentar amb diferents models sense preocupar-te per la factura
- Tens hardware decent (mínim 16GB de RAM per a models útils)

**No té sentit quan:**

- Necessites la màxima qualitat possible — els millors models comercials superen els oberts
- El teu ordinador és antic o té poca RAM
- Necessites respostes molt ràpides amb models grans
- Prefereixes no complicar-te amb instal·lacions

## Ollama: la forma més fàcil

**Ollama** és una eina que fa que executar models locals sigui tan fàcil com instal·lar un programa i escriure una comanda.

Sense Ollama, executar un model local requereix: descarregar els pesos del model, instal·lar frameworks de Python, configurar CUDA (si tens GPU NVIDIA), gestionar dependències... Un embolic tècnic considerable.

Amb Ollama, el procés és:

1. Instal·les Ollama (un sol programa)
2. Escrius `ollama pull llama3.1:8b` (descarrega el model)
3. Escrius `ollama run llama3.1:8b` (ja estàs parlant amb el model)

Ollama s'encarrega de tot el que hi ha pel mig: descarrega el model en el format correcte, detecta si tens GPU o no, optimitza la memòria, i serveix una API local compatible amb el format d'OpenAI. Això últim és clau: significa que qualsevol programa que funcioni amb l'API d'OpenAI (inclòs OpenClaw) pot usar un model d'Ollama simplement canviant l'URL de `api.openai.com` a `localhost:11434`.

## Quins models pots executar?

Depèn del teu hardware. La regla general és que necessites entre 0,5GB i 1GB de RAM (o VRAM de GPU) per cada bilió de paràmetres del model, en format quantitzat.

**8GB de RAM — Models de 1-3B paràmetres:**
Phi-3 Mini, Gemma 2B. Funcionals per a tasques bàsiques: resums curts, classificació, traduccions simples. No esperis converses llargues ni raonaments complexos.

**16GB de RAM — Models de 7-8B paràmetres:**
LLaMA 3.1 8B, Mistral 7B, Qwen2.5 7B. Aquí comença a ser útil de veritat. Converses coherents, generació de text decent, codi bàsic. Si tens GPU dedicada, la velocitat és molt acceptable.

**32GB de RAM — Models de 13-14B paràmetres:**
LLaMA 3.1 13B, Qwen2.5 14B. Millora notable en qualitat, especialment en raonament i tasques complexes.

**64GB+ de RAM o GPU potent — Models de 30-70B paràmetres:**
Aquí arribes a qualitat comparable amb models comercials, però necessites hardware serio. Una GPU amb 24GB de VRAM (com una RTX 4090 o RTX 5060 Ti 16GB) pot executar models de 30B amb bona velocitat.

## CPU vs GPU: per què importa?

Un model local pot funcionar amb CPU (el processador normal de l'ordinador) o amb GPU (la targeta gràfica).

**CPU:** Funciona sempre, no cal GPU especial. Però és lent. Un model de 7B a CPU pot trigar 10-30 segons per frase. Acceptable per a tasques en segon pla, massa lent per a conversa interactiva.

**GPU NVIDIA:** Molt més ràpid. El mateix model de 7B pot respondre en 1-3 segons. Les GPUs NVIDIA amb CUDA són l'estàndard per a inferència local. Necessites suficient VRAM per encabir el model.

**GPU AMD / Apple Silicon:** Ollama també suporta GPUs AMD (ROCm) i els xips Apple Silicon (M1/M2/M3/M4), que tenen memòria unificada. Els Mac amb Apple Silicon són sorprenentment bons per a inferència local gràcies a la seva memòria ràpida compartida entre CPU i GPU.

## Quantització: fer el model més petit

Quan descarregues un model amb Ollama, normalment el descarregues **quantitzat**. La quantització redueix la precisió dels paràmetres del model (de 32 bits a 8 bits o menys) per fer-lo més petit i ràpid.

Un model LLaMA de 7B sense quantitzar ocupa uns 14GB. Quantitzat a 4 bits (Q4), ocupa uns 4GB. La pèrdua de qualitat és sorprenentment petita — per a la majoria de tasques, un model Q4 és pràcticament igual de bo que el model original.

Quan veus noms com `llama3.1:8b-q4_0`, el `q4_0` indica el nivell de quantització. Més baix = més petit i ràpid, però amb una mica menys de qualitat.

## Ollama com a API local

Un detall que fa Ollama molt potent: quan l'executes, serveix una **API local** al port 11434. Qualsevol programa pot connectar-s'hi com si fos una API d'OpenAI.

Per a un agent OpenClaw, això vol dir que pots configurar un model local com a provider:

- URL: `http://localhost:11434/v1`
- Model: `llama3.1:8b` (o el que hagis descarregat)
- API key: no en cal (és local)

L'agent parla amb el model local exactament igual que parlaria amb OpenAI o Anthropic. La diferència és que tot passa dins el teu ordinador.

## Conceptes clau d'avui

- **Model local:** Un LLM que s'executa al teu hardware, sense dependre de serveis externs
- **Ollama:** Eina que simplifica descarregar i executar models locals
- **Quantització (Q4, Q8):** Reducció de la precisió del model per fer-lo més petit i ràpid
- **VRAM:** La memòria de la GPU — determina quant de gran pot ser el model que executes
- **API local:** Ollama serveix una API compatible amb OpenAI al port 11434

---

*Propera lliçó: Resum de la Setmana 3 — el mapa complet per accedir a un LLM.*
