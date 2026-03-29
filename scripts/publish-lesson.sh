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
