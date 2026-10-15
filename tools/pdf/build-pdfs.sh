#!/bin/bash
# Rebuild the PDF versions of all notes, exercises and solutions.
# Needs: pandoc, xelatex (TeX Live), DejaVu fonts, python3.
# Usage (from the repo root): tools/pdf/build-pdfs.sh            # all files
#                             tools/pdf/build-pdfs.sh path/to/notes.md   # one file
set -u
here=$(cd "$(dirname "$0")" && pwd); root=$(cd "$here/../.." && pwd)
build_one() {
  f=$(cd "$(dirname "$1")" && pwd)/$(basename "$1"); d=$(dirname "$f"); b=$(basename "$f" .md)
  w=$(mktemp -d); python3 "$here/prep.py" "$f" "$w/in.md"
  ( cd "$w" && pandoc in.md -f markdown+lists_without_preceding_blankline+pipe_tables+tex_math_dollars+raw_tex-yaml_metadata_block-implicit_figures-subscript-superscript \
      --pdf-engine=xelatex -H "$here/header.tex" \
      -V geometry:margin=2.2cm -V fontsize=10pt -V colorlinks=true -V linkcolor=blue -V urlcolor=blue \
      -V mainfont="DejaVu Serif" -V sansfont="DejaVu Sans" -V monofont="DejaVu Sans Mono" \
      -o out.pdf 2> err.log ) && cp "$w/out.pdf" "$d/$b.pdf" && echo "OK   $1" || { echo "FAIL $1"; cat "$w/err.log"; }
  rm -rf "$w"
}
export -f build_one; export here
if [ $# -gt 0 ]; then for f in "$@"; do build_one "$f"; done; exit; fi
cd "$root"
find . -path ./.git -prune -o -type f \( -name notes.md -o -name problems.md -o -name solutions.md -o -name practice.md -o -name answers.md -o -name activities.md -o -name 'diagnostic-*.md' -o -name 'mock-paper*.md' -o -name exam-technique.md \) -print \
  | xargs -P 4 -I{} bash -c 'build_one "$@"' _ {}
