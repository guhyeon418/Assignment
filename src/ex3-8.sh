#!/bin/bash

# 1. DB 폴더 생성
if [ ! -d "DB" ]; then
    mkdir DB
    echo "DB 폴더 생성완료"
fi

# 2. 파일 생성 및 압축
touch DB/file1.txt DB/file2.txt DB/file3.txt DB/file4.txt DB/file5.txt
# 압축하기 (tar)
tar -cvf DB/files.tar DB/file*.txt

# 3. train 폴더 생성 및 링크
mkdir -p train
# 심볼릭 링크 (바로가기) 생성
ln -s ../DB/file1.txt train/link_file1.txt

echo "모든 작업이 완료되었습니다. 트리 구조 확인:"
# tree 명령어가 없으면 ls -R 로 대체
ls -R
