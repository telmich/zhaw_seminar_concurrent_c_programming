#!/bin/sh
# Skript um die Arbeit zu bewerten

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
