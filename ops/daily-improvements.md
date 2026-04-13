## 2026-03-30 — abe552f — seo
- Canvi: Afegit/actualitzat `llms.txt` a l'arrel per facilitar que models i crawlers entenguin l'estructura del lloc (idiomes + seccions + sitemap).
- Fitxers: static/llms.txt
- Verificació: https://clawlearning.github.io/llms.txt https://clawlearning.github.io/sitemap.xml
- Risc: low
## 2026-03-30 — 9d55b08 — seo
- Canvi: Creat `llm.txt` (àlies) perquè el comentari de `robots.txt` no apunti a un fitxer inexistent; mateix contingut que `llms.txt`.
- Fitxers: static/llm.txt
- Verificació: https://clawlearning.github.io/llm.txt https://clawlearning.github.io/robots.txt
- Risc: low
## 2026-03-30 — 2932ee7 — i18n
- Canvi: El selector d’idioma ara manté l’usuari a la lliçó equivalent en ES/EN quan existeix, en lloc d’enviar-lo sempre a la home.
- Fitxers: layouts/partials/header.html, public/ca/404.html, public/en/404.html, public/es/404.html
- Verificació: https://clawlearning.github.io/ca/posts/llico-06-que-es-un-llm/ https://clawlearning.github.io/es/posts/leccion-06-que-es-un-llm/
- Risc: low
## 2026-03-31 — 8383cb1 — content
- Canvi: He afegit una crida d'acció clara al hero de la portada en CA/ES/EN per portar directament al llistat de lliçons.
- Fitxers: hugo.yaml, public/ca/index.html, public/es/index.html, public/en/index.html
- Verificació: https://clawlearning.github.io/ https://clawlearning.github.io/ca/posts/
- Risc: low
## 2026-04-01 — 8c7c035 — ui
- Canvi: He fet els tags dels posts més llegibles al peu de cada lliçó, convertint slugs mecànics com "model-de-llenguatge" en etiquetes humanes com "Model De Llenguatge" i preservant acrònims com "LLM".
- Fitxers: layouts/_default/single.html, layouts/partials/term_label.html
- Verificació: https://clawlearning.github.io/ca/posts/llico-06-que-es-un-llm/ https://clawlearning.github.io/es/posts/leccion-06-que-es-un-llm/
- Risc: low
## 2026-04-02 — 76537a8 — ui
- Canvi: He fet coherents i llegibles els noms dels tags a la pàgina de taxonomies, reutilitzant el mateix format humà que ja es veia al peu dels posts.
- Fitxers: layouts/_default/terms.html
- Verificació: https://clawlearning.github.io/ca/tags/ https://clawlearning.github.io/en/tags/
- Risc: low
## 2026-04-03 — aa60ec0 — ui
- Canvi: He fet més humans els títols visibles de les pàgines de tag individuals, de manera que els H1 ja no mostren slugs amb guions sinó etiquetes llegibles.
- Fitxers: layouts/_default/list.html
- Verificació: https://clawlearning.github.io/ca/tags/model-de-llenguatge/ https://clawlearning.github.io/
- Risc: low
## 2026-04-08 — 9c2fb80 — seo
- Canvi: He humanitzat el títol que veuen les previsualitzacions socials (Open Graph/Twitter) a les pàgines de tags/terms, evitant slugs amb guions i reduint duplicats de meta tags.
- Fitxers: layouts/partials/extend_head.html, layouts/partials/templates/opengraph.html, layouts/partials/templates/twitter_cards.html
- Verificació: https://clawlearning.github.io/ca/tags/model-de-llenguatge/
- Risc: low
## 2026-04-10 — aa34f16 — seo
- Canvi: He eliminat el bloc hreflang duplicat del nostre extend_head (PaperMod ja el genera) i he deixat només "x-default" a la home.
- Fitxers: layouts/partials/extend_head.html
- Verificació: https://clawlearning.github.io/ca/
- Risc: low

## 2026-04-13 — 400b569 — seo
- Canvi: He afegit una descripció per defecte a les meta OG/Twitter de les pàgines de tags (term) quan no tenen description/summary, per millorar previsualitzacions a xarxes.
- Fitxers: layouts/partials/templates/opengraph.html, layouts/partials/templates/twitter_cards.html
- Verificació: https://clawlearning.github.io/ca/tags/model-de-llenguatge/
- Risc: low
