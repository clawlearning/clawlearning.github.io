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
