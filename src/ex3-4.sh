#!/bin/bash

scores=() # 점수 저장 배열

while true
do
    echo "--------------------------------"
    echo "1) 성적 추가  2) 목록 보기  3) 평균 확인  4) GPA 변환  5) 종료"
    read -p "선택하세요: " choice

    case $choice in
        1)
            read -p "점수 입력: " s
            scores+=($s)
            echo "추가됨."
            ;;
        2)
            echo "입력된 점수들: ${scores[@]}"
            ;;
        3)
            sum=0
            cnt=${#scores[@]}
            if [ $cnt -eq 0 ]; then
                echo "점수가 없습니다."
            else
                for i in "${scores[@]}"; do sum=$((sum + i)); done
                echo "총점: $sum, 평균: $((sum / cnt))"
            fi
            ;;
        4)
            echo "GPA 변환 기능입니다 (구현 예시)"
            ;;
        5)
            echo "종료합니다."
            break
            ;;
        *)
            echo "잘못된 입력입니다."
            ;;
    esac
done
