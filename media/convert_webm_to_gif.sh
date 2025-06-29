#!/usr/bin/env bash
set -euo pipefail

sInput=$1;
sOutput="$(basename ${sInput%.*})";
ffmpeg -i "${sInput}" -pix_fmt rgb8 "${sOutput}.gif" \
    && gifsicle --optimize=3 --output "${sOutput}-optimized.gif" --resize-height 600 "${sOutput}.gif"
