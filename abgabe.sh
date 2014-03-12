#!/bin/sh
# Dieses Skript holt alle repositories zum Abgabezeitpunkt

while read studi repo; do
    if [ ! -e "$studi" ]; then
        echo "Getting $repo from $studi"
        git clone "$repo" "$studi"
    else
        echo "Updating $studi"
        cd "$studi" && git pull
    fi
done < repositories
