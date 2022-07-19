#! /bin/bash

set -Cue

tcardgen -f font/M_PLUS_Rounded_1c \
  -c tcardgen/config.yaml \
  -o static/img \
  -x 100 \
  -t tcardgen/qtemplate.png \
  content/answer/*.md;

find content/answer/ -type d -name "q*" | while read -r p; do {
  tcardgen -f font/M_PLUS_Rounded_1c \
    -c tcardgen/config.yaml \
    -o static/img/"${p##*/}".png \
    -x 100 \
    -t tcardgen/qtemplate.png \
    "$p"/index.md
}; done;
