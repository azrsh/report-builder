#!/bin/sh

set -e

SRC="${SRC:="$1"}"
OUT=$(dirname "$SRC")/$(basename "$SRC" .md).pdf

echo "source file: ""$SRC"
echo "output file: ""$OUT"

PANDOC_OPT=""$SRC" -o "$OUT" \
    -V documentclass=ltjarticle \
    --pdf-engine=lualatex \
    --csl chicago-author-date.csl \
    --filter pandoc-crossref"
PANDOC_OPT="$PANDOC_OPT $2"

pandoc $PANDOC_OPT
