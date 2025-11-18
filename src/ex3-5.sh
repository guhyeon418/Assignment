#!/bin/bash

my_function() {
    echo "함수 안으로 들어왔습니다."
    # eval을 이용해 문자열을 명령어로 실행
    cmd="$1 $2"
    echo "실행할 명령어: $cmd"
    eval $cmd
}

read -p "명령어 입력(예: ls): " c
read -p "옵션 입력(예: -l): " o

my_function $c $o
