#!/bin/bash
# publish-lesson.sh — Script per a Xani (OpenClaw) per publicar lliçons
# Ús: ./publish-lesson.sh "Títol" "tag1,tag2" "categoria" "contingut markdown"
# O bé: ./publish-lesson.sh --file /path/to/lesson.md

REPO_DIR="$HOME/clawlearning.github.io"
CONTENT_DIR="$REPO_DIR/content"

# Funció per generar slug a partir del títol
slugify() {
    echo "$1" | iconv -t ascii//TRANSLIT | sed -E 's/[^a-zA-Z0-9]+/-/g' | sed -E 's/^-+|-+$//g' | tr '[:upper:]' '[:lower:]'
}

# Funció per publicar un post en un idioma
publish_post() {
    local lang="$1"
    local title="$2"
    local tags="$3"
    local category="$4"
    local content="$5"
    local slug
    slug=$(slugify "$title")
    
    local date
    date=$(date +%Y-%m-%d)
    
    local dir="$CONTENT_DIR/$lang/posts"
    mkdir -p "$dir"
    
    local filepath="$dir/${slug}.md"
    
    # Formatar tags com a YAML array
    local tags_yaml=""
    IFS=',' read -ra TAG_ARRAY <<< "$tags"
    for tag in "${TAG_ARRAY[@]}"; do
        tag=$(echo "$tag" | xargs)  # trim
        tags_yaml="$tags_yaml\n  - \"$tag\""
    done
    
    cat > "$filepath" << FRONTMATTER
---
title: "$title"
date: $date
draft: false
tags: $(echo -e "[$tags]")
categories: ["$category"]
summary: ""
ShowToc: true
---

$content
FRONTMATTER

    echo "✅ Publicat: $filepath"
}

# Commit i push
push_to_github() {
    cd "$REPO_DIR" || exit 1
    git add -A
    git commit -m "📝 Nova lliçó: $(date +%Y-%m-%d)"
    git push origin main
    echo "🚀 Push completat!"
}

# Mode --file: copia un .md ja preparat
if [ "$1" = "--file" ] && [ -f "$2" ]; then
    LANG="${3:-ca}"
    DEST_DIR="$CONTENT_DIR/$LANG/posts"
    mkdir -p "$DEST_DIR"
    cp "$2" "$DEST_DIR/"
    echo "✅ Copiat: $2 → $DEST_DIR/"
    push_to_github
    exit 0
fi

# Mode interactiu: paràmetres directes
if [ $# -ge 4 ]; then
    TITLE="$1"
    TAGS="$2"
    CATEGORY="$3"
    CONTENT="$4"
    LANG="${5:-ca}"
    
    publish_post "$LANG" "$TITLE" "$TAGS" "$CATEGORY" "$CONTENT"
    push_to_github
else
    echo "Ús:"
    echo "  $0 \"Títol\" \"tag1,tag2\" \"Categoria\" \"Contingut markdown\" [idioma]"
    echo "  $0 --file /path/to/lesson.md [idioma]"
    echo ""
    echo "Idiomes: ca (defecte), es, en"
fi
