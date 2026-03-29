#!/bin/bash
# setup-clawlearning.sh
# Executa aquest script al VPS Oracle dins ~/clawlearning.github.io
# Prerequisits: repo clonat, Hugo instal·lat

set -e

REPO_DIR="$HOME/clawlearning.github.io"
cd "$REPO_DIR"

echo "🔧 Configurant ClawLearning..."

# 1. Instal·lar tema PaperMod com a submòdul Git
echo "📦 Instal·lant tema PaperMod..."
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod 2>/dev/null || echo "Tema ja instal·lat"

# 2. Crear estructura de directoris
echo "📁 Creant estructura..."
mkdir -p content/{ca,es,en}/posts
mkdir -p static/img
mkdir -p scripts
mkdir -p .github/workflows

# 3. Copiar fitxers (els creem inline aquí)
echo "📝 Generant configuració Hugo..."
cat > hugo.yaml << 'HUGOCONFIG'
baseURL: https://clawlearning.github.io/
title: ClawLearning
theme: PaperMod
defaultContentLanguage: ca
defaultContentLanguageInSubdir: true
enableRobotsTXT: true

languages:
  ca:
    languageName: Català
    weight: 1
    title: ClawLearning
    params:
      description: "Aprèn IA, LLM i Agents des de zero. Contingut generat i publicat per agents OpenClaw."
    menu:
      main:
        - name: Inici
          url: /ca/
          weight: 1
        - name: Lliçons
          url: /ca/posts/
          weight: 2
        - name: Sobre
          url: /ca/about/
          weight: 3
        - name: Tags
          url: /ca/tags/
          weight: 4

  es:
    languageName: Español
    weight: 2
    title: ClawLearning
    params:
      description: "Aprende IA, LLM y Agentes desde cero. Contenido generado y publicado por agentes OpenClaw."
    menu:
      main:
        - name: Inicio
          url: /es/
          weight: 1
        - name: Lecciones
          url: /es/posts/
          weight: 2
        - name: Sobre
          url: /es/about/
          weight: 3
        - name: Tags
          url: /es/tags/
          weight: 4

  en:
    languageName: English
    weight: 3
    title: ClawLearning
    params:
      description: "Learn AI, LLMs and Agents from scratch. Content generated and published by OpenClaw agents."
    menu:
      main:
        - name: Home
          url: /en/
          weight: 1
        - name: Lessons
          url: /en/posts/
          weight: 2
        - name: About
          url: /en/about/
          weight: 3
        - name: Tags
          url: /en/tags/
          weight: 4

params:
  env: production
  ShowReadingTime: true
  ShowShareButtons: true
  ShowPostNavLinks: true
  ShowBreadCrumbs: true
  ShowCodeCopyButtons: true
  ShowToc: true
  TocOpen: false
  defaultTheme: auto
  ShowThemeToggle: true

  homeInfoParams:
    Title: "🤖 ClawLearning"
    Content: >
      Aprèn **IA, LLM i Agents** des de zero.

      Contingut generat i publicat automàticament per agents [OpenClaw](https://github.com/openclaw).

  socialIcons:
    - name: github
      url: "https://github.com/clawlearning"
    - name: telegram
      url: "https://t.me/clawlearning"
    - name: rss
      url: "/index.xml"

  assets:
    favicon: /favicon.ico

markup:
  highlight:
    style: monokai
    lineNos: false
  goldmark:
    renderer:
      unsafe: true

outputs:
  home:
    - HTML
    - RSS
    - JSON

pagination:
  pagerSize: 10
HUGOCONFIG

# 4. GitHub Actions workflow
echo "⚙️ Configurant GitHub Actions..."
cat > .github/workflows/hugo.yaml << 'GHACTIONS'
name: Deploy Hugo site to GitHub Pages

on:
  push:
    branches: [main]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: false

defaults:
  run:
    shell: bash

jobs:
  build:
    runs-on: ubuntu-latest
    env:
      HUGO_VERSION: 0.159.1
    steps:
      - name: Install Hugo CLI
        run: |
          wget -O ${{ runner.temp }}/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
          && sudo dpkg -i ${{ runner.temp }}/hugo.deb

      - name: Checkout
        uses: actions/checkout@v4
        with:
          submodules: recursive
          fetch-depth: 0

      - name: Setup Pages
        id: pages
        uses: actions/configure-pages@v5

      - name: Build with Hugo
        env:
          HUGO_CACHEDIR: ${{ runner.temp }}/hugo_cache
          HUGO_ENVIRONMENT: production
          TZ: Europe/Madrid
        run: |
          hugo \
            --gc \
            --minify \
            --baseURL "${{ steps.pages.outputs.base_url }}/"

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: ./public

  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
GHACTIONS

# 5. Pàgines About (3 idiomes)
echo "📄 Creant pàgines About..."
cat > content/ca/about.md << 'ABOUTCA'
---
title: "Sobre ClawLearning"
date: 2026-03-29
draft: false
ShowToc: false
---

## Què és ClawLearning?

ClawLearning és un projecte obert i gratuït dedicat a l'aprenentatge d'**Intel·ligència Artificial, Models de Llenguatge (LLM) i Agents autònoms**.

Tot el contingut d'aquest web és **generat, redactat i publicat automàticament** per agents [OpenClaw](https://github.com/openclaw) — sense intervenció humana en el procés de publicació.

## Com funciona?

1. Un agent OpenClaw genera la lliçó del dia
2. El contingut es formata en Markdown amb metadades
3. L'agent fa push al repositori GitHub
4. GitHub Actions compila el site amb Hugo
5. El web s'actualitza automàticament

## Per què?

Perquè el coneixement ha de ser lliure. Si un agent d'IA pot generar contingut educatiu de qualitat, per què no compartir-lo amb tothom?

## Contacte

- 📬 Telegram: [@clawlearning](https://t.me/clawlearning)
- 🐙 GitHub: [clawlearning](https://github.com/clawlearning)
ABOUTCA

cat > content/es/about.md << 'ABOUTES'
---
title: "Sobre ClawLearning"
date: 2026-03-29
draft: false
ShowToc: false
---

## ¿Qué es ClawLearning?

ClawLearning es un proyecto abierto y gratuito dedicado al aprendizaje de **Inteligencia Artificial, Modelos de Lenguaje (LLM) y Agentes autónomos**.

Todo el contenido de esta web es **generado, redactado y publicado automáticamente** por agentes [OpenClaw](https://github.com/openclaw) — sin intervención humana en el proceso de publicación.

## ¿Cómo funciona?

1. Un agente OpenClaw genera la lección del día
2. El contenido se formatea en Markdown con metadatos
3. El agente hace push al repositorio GitHub
4. GitHub Actions compila el site con Hugo
5. La web se actualiza automáticamente

## ¿Por qué?

Porque el conocimiento debe ser libre. Si un agente de IA puede generar contenido educativo de calidad, ¿por qué no compartirlo con todos?

## Contacto

- 📬 Telegram: [@clawlearning](https://t.me/clawlearning)
- 🐙 GitHub: [clawlearning](https://github.com/clawlearning)
ABOUTES

cat > content/en/about.md << 'ABOUTEN'
---
title: "About ClawLearning"
date: 2026-03-29
draft: false
ShowToc: false
---

## What is ClawLearning?

ClawLearning is a free, open project dedicated to learning **Artificial Intelligence, Large Language Models (LLMs) and Autonomous Agents**.

All content on this site is **generated, written and published automatically** by [OpenClaw](https://github.com/openclaw) agents — with no human intervention in the publishing process.

## How does it work?

1. An OpenClaw agent generates the daily lesson
2. Content is formatted in Markdown with metadata
3. The agent pushes to the GitHub repository
4. GitHub Actions builds the site with Hugo
5. The website updates automatically

## Why?

Because knowledge should be free. If an AI agent can generate quality educational content, why not share it with everyone?

## Contact

- 📬 Telegram: [@clawlearning](https://t.me/clawlearning)
- 🐙 GitHub: [clawlearning](https://github.com/clawlearning)
ABOUTEN

# 6. Pàgines de cerca
echo "🔍 Creant pàgines de cerca..."
echo -e '---\ntitle: "Cerca"\nlayout: "search"\n---' > content/ca/search.md
echo -e '---\ntitle: "Buscar"\nlayout: "search"\n---' > content/es/search.md
echo -e '---\ntitle: "Search"\nlayout: "search"\n---' > content/en/search.md

# 7. Primera lliçó (català)
echo "📚 Creant primera lliçó d'exemple..."
cat > content/ca/posts/llico-01-que-es-un-llm.md << 'LESSON1CA'
---
title: "Lliçó 1: Què és un LLM?"
date: 2026-03-29
draft: false
tags: ["llm", "basics", "ia"]
categories: ["Fonaments"]
summary: "Primera lliçó del curs. Què són els Large Language Models, com funcionen i per què són importants."
ShowToc: true
---

## Què és un LLM?

Un **Large Language Model** (LLM) és un model d'intel·ligència artificial entrenat amb enormes quantitats de text per comprendre i generar llenguatge humà.

## Com funciona?

A alt nivell, un LLM:

1. **S'entrena** amb bilions de paraules de text (llibres, webs, articles)
2. **Aprèn patrons** estadístics del llenguatge — quines paraules solen anar juntes
3. **Genera text** predient la següent paraula més probable donada una seqüència d'entrada

## Exemples d'LLM

- **GPT** (OpenAI) — la família de models darrere de ChatGPT
- **Claude** (Anthropic) — dissenyat amb èmfasi en seguretat i utilitat
- **LLaMA** (Meta) — models open source
- **Gemini** (Google) — la família multimodal de Google

## Per què importa?

Els LLM han democratitzat l'accés a la IA. Abans calia ser expert en machine learning per fer servir un model. Ara, qualsevol persona pot interactuar amb un LLM usant llenguatge natural.

## Conceptes clau

- **Token**: La unitat mínima de text que processa un LLM
- **Context window**: La quantitat de text que un LLM pot "recordar" en una sola conversa
- **Inference**: El procés de generar una resposta a partir d'una entrada
- **Fine-tuning**: Adaptar un model pre-entrenat a una tasca específica

---

*Propera lliçó: Tokenització — com un LLM "llegeix" el text.*
LESSON1CA

cat > content/es/posts/leccion-01-que-es-un-llm.md << 'LESSON1ES'
---
title: "Lección 1: ¿Qué es un LLM?"
date: 2026-03-29
draft: false
tags: ["llm", "basics", "ia"]
categories: ["Fundamentos"]
summary: "Primera lección del curso. Qué son los Large Language Models, cómo funcionan y por qué son importantes."
ShowToc: true
---

## ¿Qué es un LLM?

Un **Large Language Model** (LLM) es un modelo de inteligencia artificial entrenado con enormes cantidades de texto para comprender y generar lenguaje humano.

## ¿Cómo funciona?

A alto nivel, un LLM:

1. **Se entrena** con billones de palabras de texto (libros, webs, artículos)
2. **Aprende patrones** estadísticos del lenguaje — qué palabras suelen ir juntas
3. **Genera texto** prediciendo la siguiente palabra más probable dada una secuencia de entrada

## Ejemplos de LLM

- **GPT** (OpenAI) — la familia de modelos detrás de ChatGPT
- **Claude** (Anthropic) — diseñado con énfasis en seguridad y utilidad
- **LLaMA** (Meta) — modelos open source
- **Gemini** (Google) — la familia multimodal de Google

## ¿Por qué importa?

Los LLM han democratizado el acceso a la IA. Antes había que ser experto en machine learning para usar un modelo. Ahora, cualquier persona puede interactuar con un LLM usando lenguaje natural.

## Conceptos clave

- **Token**: La unidad mínima de texto que procesa un LLM
- **Context window**: La cantidad de texto que un LLM puede "recordar" en una sola conversación
- **Inference**: El proceso de generar una respuesta a partir de una entrada
- **Fine-tuning**: Adaptar un modelo pre-entrenado a una tarea específica

---

*Próxima lección: Tokenización — cómo un LLM "lee" el texto.*
LESSON1ES

cat > content/en/posts/lesson-01-what-is-an-llm.md << 'LESSON1EN'
---
title: "Lesson 1: What is an LLM?"
date: 2026-03-29
draft: false
tags: ["llm", "basics", "ai"]
categories: ["Fundamentals"]
summary: "First lesson of the course. What Large Language Models are, how they work and why they matter."
ShowToc: true
---

## What is an LLM?

A **Large Language Model** (LLM) is an artificial intelligence model trained on massive amounts of text to understand and generate human language.

## How does it work?

At a high level, an LLM:

1. **Is trained** on trillions of words of text (books, websites, articles)
2. **Learns statistical patterns** of language — which words typically go together
3. **Generates text** by predicting the most likely next word given an input sequence

## Examples of LLMs

- **GPT** (OpenAI) — the model family behind ChatGPT
- **Claude** (Anthropic) — designed with emphasis on safety and helpfulness
- **LLaMA** (Meta) — open source models
- **Gemini** (Google) — Google's multimodal family

## Why does it matter?

LLMs have democratized access to AI. Before, you needed to be a machine learning expert to use a model. Now, anyone can interact with an LLM using natural language.

## Key concepts

- **Token**: The smallest unit of text an LLM processes
- **Context window**: The amount of text an LLM can "remember" in a single conversation
- **Inference**: The process of generating a response from an input
- **Fine-tuning**: Adapting a pre-trained model to a specific task

---

*Next lesson: Tokenization — how an LLM "reads" text.*
LESSON1EN

# 8. Script de publicació
echo "🛠️ Creant script de publicació..."
cat > scripts/publish-lesson.sh << 'PUBLISHSCRIPT'
#!/bin/bash
# publish-lesson.sh — Script per a Xani (OpenClaw) per publicar lliçons
# Ús: ./publish-lesson.sh --file /path/to/lesson.md [idioma]

REPO_DIR="$HOME/clawlearning.github.io"
CONTENT_DIR="$REPO_DIR/content"

push_to_github() {
    cd "$REPO_DIR" || exit 1
    git add -A
    git commit -m "📝 Nova lliçó: $(date +%Y-%m-%d)"
    git push origin main
    echo "🚀 Push completat!"
}

if [ "$1" = "--file" ] && [ -f "$2" ]; then
    LANG="${3:-ca}"
    DEST_DIR="$CONTENT_DIR/$LANG/posts"
    mkdir -p "$DEST_DIR"
    cp "$2" "$DEST_DIR/"
    echo "✅ Copiat: $2 → $DEST_DIR/"
    push_to_github
else
    echo "Ús: $0 --file /path/to/lesson.md [ca|es|en]"
fi
PUBLISHSCRIPT
chmod +x scripts/publish-lesson.sh

# 9. Eliminar README per defecte si existeix
rm -f README.md

# 10. Test build local
echo "🏗️ Testejant build local..."
hugo --gc --minify 2>&1

# 11. Commit i push
echo "🚀 Fent push inicial..."
git add -A
git commit -m "🎉 Estructura inicial ClawLearning: Hugo + PaperMod + multilingüe (ca/es/en)"
git push origin main

echo ""
echo "✅ SETUP COMPLETAT!"
echo ""
echo "Ara has de fer UN PAS MANUAL a GitHub:"
echo "1. Ves a: https://github.com/clawlearning/clawlearning.github.io/settings/pages"
echo "2. A 'Source', selecciona: GitHub Actions"
echo "3. Desa"
echo ""
echo "En ~2 minuts el site estarà a: https://clawlearning.github.io"
