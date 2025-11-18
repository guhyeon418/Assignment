#!/bin/bash

DB="DB.txt"
touch $DB

while true; do
    echo "1)팀원추가 2)회의기록 3)팀원검색 4)기록검색 5)종료"
    read -p "선택: " op

    case $op in
        1)
            read -p "이름 및 정보: " info
            echo "[INFO] $info" >> $DB
            ;;
        2)
            read -p "날짜 및 내용: " log
            echo "[LOG] $log" >> $DB
            ;;
        3)
            read -p "검색할 이름: " name
            grep "$name" $DB
            ;;
        4)
            read -p "검색할 내용: " content
            grep "$content" $DB
            ;;
        5) break ;;
    esac
done
