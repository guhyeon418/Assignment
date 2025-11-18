#!/bin/bash

sum=0
count=0

echo "=== 과목별 등급 ==="
for score in "$@"
do
    if [ "$score" -ge 90 ]; then
        echo "점수: $score, 등급: A"
    else
        echo "점수: $score, 등급: B"
    fi
    sum=$((sum + score))
    count=$((count + 1))
done

# 평균 계산 (awk 사용)
avg=$(awk "BEGIN {print $sum / $count}")
echo "=== 결과 ==="
echo "평균 점수: $avg"

# 평균 등급 판별
is_A=$(awk "BEGIN {if ($avg >= 90) print 1; else print 0}")
if [ "$is_A" -eq 1 ]; then
    echo "평균 등급: A"
else
    echo "평균 등급: B"
fi
