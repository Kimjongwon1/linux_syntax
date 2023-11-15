# 사용자가 현재 위치에 있는 폴더 경로 출력
pwd
# 현재 위치에서 파일, 폴더 목록
ls
# 현재 위치에서 파일, 폴더 목록 + 자세히 보기
ls -l
# 자세히 + 숨김파일까지 보기
ls -al
# 디렉토리 생성
mkdir 폴더명(영어로)
mkdir jongwon_dir
# 특정 디렉토리로 이동
cd 디렉토리명
cd jongwon_dir
# 루트 디렉토리 이동
cd /
# 기존 디렉토리로 이동
cd home/kimjongwon/jongwon_dir
# # 상위폴더로 이동
# cd ..
# 홈경로로 이동
cd 
# 비어있는 파일 만들기(이미 같은 이름의 파일이 있을경우 수정시간을 바꿈, 용량은 그대로)
touch first_file.txt
# 파일 내용 조회
cat first_file.txt
# 터미널창에 문자열 출력
echo "hello world"
# echo를 통해 파일에 write 하는 법
# > 하나면 덮어쓰기, >> 추가로 쓰기
echo "hello world"> first_file.txt

# 파일을 읽기 위해서는 <를 사용
# sort 명령어와 함께 많이 사용이 된다.
sort < first_file.txt
# ctrl+c 하면 취소
# tab 쓰면 자동완성
#d(디렉토리)rwx(소유자권한 read,write,실행)r-x(소유그룹 read,실행권한만)--- 16 kimjongwon(소유자) kimjongwon(소유그룹) 4096 11월 14 15:25 
# history 명령어를 통해 이전에 실행했던 명령어 조회
history
# 입력중인 명령창 정리
clear
#. 은 현재폴더를 의미
#모든권한주기
chmod 777 myscript.sh
# rm은 삭제명령어, rm -r은 디렉토리까지 삭제
# rm -rf는 디렉토리까지 묻지 않고 삭제
rm -rf jongwon_dir

#cp는 복사명령어
#cp 복사대상 복사된파일명(경로포함)
cp -r test_dir jongwon_dir/second_dir
cp second_file.text ../../third.text

#mv는 이동명령어(r옵선 필요없음)
#mv 이동대상 이동된파일명(경로포함) 이름 바꿀때도 사용가능
mv test_dir jongwon_dir/second_dir
# 이름안바꾸고 상위 폴더로 파일 옮기기
mv abc.txt ../

# head는 cat처럼 파일을 출력하는것인데 상위 n개 조회
# tail은 하위 N개 행 조회

#파일에 문장을 추가하고 싶을때
echo "hello world16" >> first_file.txt

#nano 파일 실행시 ./나노파일명
#cd - 를 하면 방금 있었던 폴더로 돌아감

