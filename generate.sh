#!/bin/bash

TITLE="LLM-Y LOKALNIE, WALKA O TOKENY I DLACZEGO JESZCZE NIE UCZĄ TEGO NA UCZELNIACH"
SPEAKER="GRZEGORZ KURZEJAMSKI"
DATE="22 PAŹDZIERNIKA 2026"
LOCATION="WEITI SALA 105"
HOUR="18:15"

sed -E -e "s/%TITLE%/$TITLE/g" \
       -e "s/%SPEAKER%/$SPEAKER/g" \
       -e "s/%DATE%/$DATE/g" \
       -e "s/%LOCATION%/$LOCATION/g" \
       -e "s/%HOUR%/$HOUR/g" \
       template.vectorcraft > /tmp/injected.vectorcraft

echo "substitution done"

vectorcraft-cli convert /tmp/injected.vectorcraft out/instgram.png --scale 1 --artboard 1
vectorcraft-cli convert /tmp/injected.vectorcraft out/linkedin.png --scale 1.33333 --artboard 8
vectorcraft-cli convert /tmp/injected.vectorcraft out/ekrany.png --scale 1 --artboard 6
vectorcraft-cli convert /tmp/injected.vectorcraft out/discord.png --scale 2 --artboard 9
vectorcraft-cli convert /tmp/injected.vectorcraft out/facebook.png --scale 1.33333 --artboard 8

echo "done"
