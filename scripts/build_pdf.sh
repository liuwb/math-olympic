#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./scripts/build_pdf.sh path/to/file.tex [more.tex ...]
  ./scripts/build_pdf.sh --all

Notes:
  - Uses xelatex by default and compiles each tex file twice.
  - The generated pdf is written to the same directory as the tex file.
EOF
}

if ! command -v xelatex >/dev/null 2>&1; then
  echo "Error: xelatex was not found. Please install MacTeX or make sure xelatex is in PATH." >&2
  exit 1
fi

if [[ $# -eq 0 ]]; then
  usage
  exit 1
fi

declare -a tex_files=()

if [[ $# -eq 1 && "$1" == "--all" ]]; then
  while IFS= read -r file; do
    tex_files+=("$file")
  done < <(find . -type f -name '*.tex' | sort)
else
  for arg in "$@"; do
    if [[ "$arg" == "--help" || "$arg" == "-h" ]]; then
      usage
      exit 0
    fi
    if [[ ! -f "$arg" ]]; then
      echo "Error: file does not exist: $arg" >&2
      exit 1
    fi
    if [[ "${arg##*.}" != "tex" ]]; then
      echo "Error: only .tex files are supported: $arg" >&2
      exit 1
    fi
    tex_files+=("$arg")
  done
fi

if [[ ${#tex_files[@]} -eq 0 ]]; then
  echo "Error: no tex files were found to compile." >&2
  exit 1
fi

for tex_file in "${tex_files[@]}"; do
  tex_dir=$(dirname "$tex_file")
  tex_name=$(basename "$tex_file")

  echo "==> Compiling $tex_file"
  xelatex -interaction=nonstopmode -halt-on-error -output-directory="$tex_dir" "$tex_file"
  xelatex -interaction=nonstopmode -halt-on-error -output-directory="$tex_dir" "$tex_file"
  echo "==> Generated ${tex_dir}/$(basename "${tex_name%.tex}.pdf")"
done
