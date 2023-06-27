#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"

cat ./*.md | pandoc -f markdown -t docx -o dossier-vs-code.docx
