# SEO Pack — Instruccions de desplegament

## Fitxers inclosos

```
seo-pack/
├── static/
│   ├── llm.txt          # Descripció del site per a crawlers d'IA
│   ├── llms.txt         # Índex complet de contingut per a IAs
│   └── robots.txt       # robots.txt millorat (sobreescriu el d'Hugo)
├── layouts/
│   └── partials/
│       └── extend_head.html  # Meta tags SEO, Open Graph, Schema.org
├── README.md            # README del repo (sobreescriu l'actual)
└── DEPLOY-SEO.md        # Aquest fitxer
```

## Passos de desplegament

```bash
cd ~/clawlearning.github.io

# 1. Copiar fitxers estàtics
cp static/llm.txt static/llms.txt static/robots.txt ./static/

# 2. Copiar template SEO (override de PaperMod)
mkdir -p layouts/partials
cp layouts/partials/extend_head.html ./layouts/partials/

# 3. Actualitzar README
cp README.md ./README.md

# 4. IMPORTANT: Desactivar el robots.txt generat per Hugo
#    (perquè usem el nostre propi a static/)
#    Al hugo.yaml, canviar:
#      enableRobotsTXT: true
#    per:
#      enableRobotsTXT: false
#    (el nostre robots.txt custom a static/ serà servit directament)

# 5. Verificar build
hugo --gc --minify

# 6. Comprovar que els fitxers existeixen
ls -la public/llm.txt public/llms.txt public/robots.txt

# 7. Push
git add -A
git commit -m "🔍 SEO: llm.txt, schema.org, Open Graph, robots.txt millorat"
git push origin main
```

## Verificació post-deploy

Comprovar que funcionen:
- https://clawlearning.github.io/llm.txt
- https://clawlearning.github.io/llms.txt
- https://clawlearning.github.io/robots.txt
- Veure el codi font de qualsevol lliçó i buscar:
  - `<meta property="og:title"` (Open Graph)
  - `<script type="application/ld+json"` (Schema.org)
  - `<link rel="alternate" hreflang=` (multilingüe)

## Què fa cada fitxer

### llm.txt / llms.txt
Estàndard emergent per a crawlers d'IA (ChatGPT, Perplexity, Claude).
Descriu el contingut del site en format que les IAs poden parsejar fàcilment.
llm.txt = resum breu, llms.txt = índex complet amb links.

### robots.txt
Permet explícitament l'accés a tots els crawlers d'IA (GPTBot, ClaudeBot,
PerplexityBot, etc.) i apunta als sitemaps.

### extend_head.html
PaperMod suporta un partial `extend_head.html` que s'injecta al <head>
de totes les pàgines. Afegim:
- Hreflang tags (SEO multilingüe)
- Open Graph meta tags (compartir a xarxes socials)
- Twitter Card meta tags
- Schema.org JSON-LD (Course + Article)
- Canonical URLs
- Meta robots

### README.md
README millorat amb badges, taula del curs, links directes, i referència
als fitxers llm.txt per a crawlers.
