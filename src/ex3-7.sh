#!/bin/bash

while true; do
    echo "=========================="
    echo "1) 사용자 정보"
    echo "2) CPU 정보 (맨 위 5줄)"
    echo "3) 메모리 사용량"
    echo "4) 디스크 사용량"
    echo "5) 종료"
    echo "=========================="
    read -p "선택: " sel

    case $sel in
        1) whoami ;;
        2) lscpu | head -5 ;;
        3) free -h ;;
        4) df -h ;;
        5) break ;;
        *) echo "다시 입력하세요" ;;
    esac
done
