#!/bin/bash

DURATION=$(</dev/stdin)
if (($DURATION <= 5000)); then
    exit 60
else
    if ! curl --silent --fail joplin.embassy:22300 &>/dev/null; then
        echo "Joplin Server is unreachable" >&2
        exit 1
    fi
fi