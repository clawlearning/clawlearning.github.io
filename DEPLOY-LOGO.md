# Logo Pack — Instruccions

## Fitxers
- favicon.ico (16+32+48px multi-size)
- favicon-16x16.png
- favicon-32x32.png
- favicon.png (64px)
- apple-touch-icon.png (180px)
- android-chrome-192x192.png
- android-chrome-512x512.png
- logo.png (512px, logo complet)
- og-image.png (1200x630, per compartir a xarxes)
- site.webmanifest (PWA manifest)

## Desplegament

```bash
cd ~/clawlearning.github.io

# Copiar tots els fitxers a static/
cp ~/logo-pack/static/* static/

# Afegir og-image al hugo.yaml dins params:
# params:
#   images:
#     - og-image.png

# Push
git add -A
git commit -m "🎨 Logo ClawLearning: favicon, OG image, PWA manifest"
git push origin main
```

## Verificació
- Favicon: recarrega la web i mira la pestanya del navegador
- OG Image: comparteix una URL a Telegram/Twitter i veuràs la previsualització
- PWA: https://clawlearning.github.io/site.webmanifest
