#!/bin/bash

# 파일이 있는지 확인
if [ ! -f "my_prog.py" ]; then
    echo "my_prog.py 파일이 없습니다!"
    exit 1
fi

echo "쉘 스크립트에서 파이썬 파일을 실행합니다..."
python3 my_prog.py "$@"
