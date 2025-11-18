#!/bin/bash
for x in "$@"
do
    result=$(awk "BEGIN {print 0.5 * $x * $x}")
    echo "x: $x, y: $result"
done
