#!/bin/bash

NB=$'\xc2\xa0'   # twarda spacja U+00A0

TITLE="LLM-Y LOKALNIE, WALKA O${NB}TOKENY I${NB}DLACZEGO JESZCZE NIE UCZĄ TEGO NA${NB}UCZELNIACH"
SPEAKER="GRZEGORZ KURZEJAMSKI"
DATE="22 PAŹDZIERNIKA 2026"
LOCATION="WEITI SALA 105"
HOUR="18:15"

LC_ALL=C sed -E -e "s/%TITLE%/$TITLE/g" \
       -e "s/%SPEAKER%/$SPEAKER/g" \
       -e "s/%DATE%/$DATE/g" \
       -e "s/%LOCATION%/$LOCATION/g" \
       -e "s/%HOUR%/$HOUR/g" \
       template.vectorcraft > /tmp/injected.vectorcraft

echo "substitution done"

./vectorcraft-cli convert /tmp/injected.vectorcraft out/ekrany_qr.png --scale 1 --artboard 0
./vectorcraft-cli convert /tmp/injected.vectorcraft out/ekrany.png --scale 1 --artboard 1
./vectorcraft-cli convert /tmp/injected.vectorcraft out/linkedin_wydarzenie.png --scale 1 --artboard 1
./vectorcraft-cli convert /tmp/injected.vectorcraft out/discord.png --scale 1 --artboard 3
./vectorcraft-cli convert /tmp/injected.vectorcraft out/instagram.png --scale 1 --artboard 2
./vectorcraft-cli convert /tmp/injected.vectorcraft out/facebook.png --scale 1 --artboard 4
./vectorcraft-cli convert /tmp/injected.vectorcraft out/linkedin_post.png --scale 1 --artboard 4

echo "done"
