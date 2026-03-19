#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_DIR="$ROOT_DIR/figures"
OUTPUT_DIR="$ROOT_DIR/static/images/figures/about"
DRAWIO_BIN="${DRAWIO_BIN:-/Applications/draw.io.app/Contents/MacOS/draw.io}"
WIDTHS=(480 960 1920)
FIGURES=(
  overview
  vli
  c-xai
  subspace
  sim2real
)

if ! command -v magick >/dev/null 2>&1; then
  echo "ImageMagick ('magick') is required to generate figure variants." >&2
  exit 1
fi

if [[ ! -x "$DRAWIO_BIN" ]]; then
  echo "draw.io CLI not found at $DRAWIO_BIN" >&2
  exit 1
fi

mkdir -p "$OUTPUT_DIR"

export_pdf() {
  local base="$1"

  "$DRAWIO_BIN" -x \
    -f pdf \
    --crop \
    -o "${SOURCE_DIR}/${base}.pdf" \
    "${SOURCE_DIR}/${base}.drawio"
}

render_webp() {
  local base="$1"
  local width="$2"

  magick -density 300 "${SOURCE_DIR}/${base}.pdf[0]" \
    -resize "${width}x" \
    -strip \
    -define webp:lossless=true \
    "${OUTPUT_DIR}/${base}-${width}.webp"
}

render_png() {
  local base="$1"
  local width="$2"

  magick -density 300 "${SOURCE_DIR}/${base}.pdf[0]" \
    -resize "${width}x" \
    -strip \
    "PNG8:${OUTPUT_DIR}/${base}-${width}.png"
}

for base in "${FIGURES[@]}"; do
  if [[ ! -f "${SOURCE_DIR}/${base}.drawio" ]]; then
    echo "Missing source figure: ${SOURCE_DIR}/${base}.drawio" >&2
    exit 1
  fi

  export_pdf "$base"
  rm -f "${OUTPUT_DIR}/${base}-"*.png "${OUTPUT_DIR}/${base}-"*.webp

  for width in "${WIDTHS[@]}"; do
    render_webp "$base" "$width"
    render_png "$base" "$width"
  done
done

echo "Generated responsive About-page figures in ${OUTPUT_DIR}:"
for base in "${FIGURES[@]}"; do
  sips -g pixelWidth -g pixelHeight "${OUTPUT_DIR}/${base}-1920.png" | tail -n +2
done
