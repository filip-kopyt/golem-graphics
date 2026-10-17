#!/bin/bash

TITLE="Jakiś ciekawy tytuł"
SPEAKER="Jozin z Bazin"
DATE="31 lutego 1670"
LOCATION="Pałac w Wyzimie"
HOUR="21:37"

sed -E -e "s/%TITLE%/$TITLE/g" \
       -e "s/%SPEAKER%/$SPEAKER/g" \
       -e "s/%DATE%/$DATE/g" \
       -e "s/%LOCATION%/$LOCATION/g" \
       -e "s/%HOUR%/$HOUR/g" \
       template.vectorcraft > /tmp/injected.vectorcraft

echo "substitution done"

for i in {0..9}
do
    vectorcraft-cli convert /tmp/injected.vectorcraft out/art$i.png --scale 2 --artboard $i
    echo "art $i generated"
done

echo "done"
