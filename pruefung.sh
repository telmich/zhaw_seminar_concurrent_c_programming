#!/bin/sh
# Skript um die Arbeit zu bewerten

if [ "$#" -ne 1 ]; then
    echo $0 studi >&2
    exit 1
fi

studi=$1; shift

cd "repos/$studi"

# Abbrechen, falls ein Teil nicht bestanden ist
set -e

echo "Build project"
# make
# ergebnisse überprüfen

echo "Read doc.pdf"
evince doc.pdf

echo "Test Server"
./run &
./magic-test-skript.sh
