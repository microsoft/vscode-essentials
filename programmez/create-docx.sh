#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"

for f in *.md; do cat "$f"; echo; done | pandoc --highlight-style haddock -f markdown -t docx -o dossier-vs-code.docx

words=$(wc -w ./*.md | grep total | awk '{print $1}')
echo "Nombre de mots dans le dossier: $words"
