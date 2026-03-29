---
title: "Lección 12: ¿Qué es una API? La puerta de entrada a los LLM"
date: 2026-04-15
slug: "leccion-12-que-es-una-api"
draft: false
tags: ["api", "claves", "acceso"]
categories: ["Infraestructura"]
summary: "Desmitificamos las APIs — qué son, cómo funcionan, y por qué las necesitas para tener un agente."
ShowToc: true
weight: 12
---

## ¿Por qué necesitas saber qué es una API?

Si quieres usar un LLM desde el navegador (ChatGPT, Claude.ai), no necesitas saber qué es una API. Pero si quieres un **agente propio** — un bot de Telegram que trabaje para ti, una automatización que procese emails — necesitas conectarte al modelo por otra vía. Esa vía es la API.

## ¿Qué es una API?

**API** viene de Application Programming Interface — Interfaz de Programación de Aplicaciones. Suena intimidante, pero el concepto es sencillo.

Una API es un **sistema de comunicación estandarizado** entre dos programas. Permite que un programa haga peticiones a otro y reciba respuestas, sin que ningún humano intervenga.

La analogía más clara es un restaurante:

1. **Tú** (el agente/programa) eres el cliente
2. **La carta** es la documentación de la API — te dice qué puedes pedir
3. **El camarero** es la API — lleva tu pedido a la cocina y te trae el plato
4. **La cocina** es el modelo (LLM) — procesa el pedido y prepara el resultado

Tú no entras en la cocina a cocinar. Haces el pedido al camarero, en un formato que él entiende, y él gestiona todo el proceso.

## API vs interfaz web

Cuando usas ChatGPT en el navegador, detrás hay una API — pero la interfaz web te esconde toda la complejidad.

Cuando usas la API directamente, tú construyes la petición. Le dices al modelo exactamente qué quieres: qué modelo usar, cuántos tokens de respuesta, a qué temperatura, y qué texto procesar.

La diferencia clave: la interfaz web es para **humanos interactivos**. La API es para **programas autónomos**.

## API keys: tu clave de acceso

Una **API key** es como una contraseña especial que te identifica ante el provider. Cada vez que tu agente hace una petición, envía la API key para que el provider sepa quién eres y a qué cuenta cargar el consumo.

Reglas de oro con las API keys:

**Nunca compartas una API key.** Si alguien la tiene, puede hacer peticiones a tu cuenta y tú pagarás la factura.

**Nunca la pongas en código que subas a GitHub.** Hay bots que escanean GitHub buscando API keys expuestas y las explotan en minutos.

**Guárdalas en variables de entorno.** En lugar de poner la key directamente en el código, la guardas como variable del sistema operativo.

**Puedes revocarlas y crear nuevas.** Si crees que una key se ha comprometido, elimínala inmediatamente.

## El coste de la API

La mayoría de providers cobran **por token procesado**:

- Si tu agente procesa 1000 peticiones al día, pagas por todos los tokens
- Si un día no lo usas, no pagas nada
- Los tokens de salida suelen ser más caros que los de entrada

## APIs compatibles con OpenAI

Muchos providers de inferencia usan un formato de API **compatible con OpenAI**. Esto significa que la manera de enviar peticiones es la misma para todos — solo cambias la URL del provider y la API key.

Para OpenClaw, esto es muy práctico: puedes cambiar de provider simplemente cambiando dos parámetros en la configuración.

## Conceptos clave de hoy

- **API:** Interfaz de comunicación entre programas — el "camarero" entre tu agente y el modelo
- **API key:** Clave única que te identifica ante el provider. Nunca compartirla
- **Petición:** El mensaje que envías a la API (incluye modelo, mensaje, parámetros)
- **Precio por token:** El modelo de cobro de la mayoría de APIs de LLM
- **API compatible con OpenAI:** Formato estándar que muchos providers adoptan

---

*Próxima lección: Gratuito vs de pago — ¿dónde puedo usar IA sin pagar?*
