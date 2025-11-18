#!/bin/bash
if [ $# -ne 2 ]; then
    echo "숫자 2개를 입력하세요."
    exit 1
fi
NUM1=$1
NUM2=$2
echo "Input: $NUM1, $NUM2"
echo "Add: $((NUM1 + NUM2))"
echo "Sub: $((NUM1 - NUM2))"
echo "Mul: $((NUM1 * NUM2))"
echo "Div: $((NUM1 / NUM2))"
