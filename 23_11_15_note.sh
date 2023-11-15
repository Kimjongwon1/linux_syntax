#  -f는 파일을 찾는건, 대괄호 안에 띄워쓰기 꼭 해야함
 if [ -f "first.txt" ];
then
	echo "first.txt exist"
else
	echo "first.txt does not exist"
fi
# 변수화:일체화되서 바꾸기 쉬움
file_name="first.txt"
if [ -f "$file_name" ];
then
	echo "$file_name exist"
else
	echo "$file_name does not exist"
fi




# > 하나만 써짐, >> 추가로 여러개 가능
echo "hello world"> first_file.txt



# grep
파일내에서 특정 패턴이나 문자열을 검색
사용법
grep [옵션][패턴][파일명]
-r옵션: 디렉토리 내 모든 파일에서 검색
-i옵션: 대소문자 구분 없이 검색
-n옵션: 라인수 출력
ex)grep -rin "hello" mydir
-hello 문자열을 라인수와 함께 mydir폴더에서 대소문자 구분없이 검색

# find
파일이나 디렉토리를 검색하는 명령어
find[경로][옵션][행동]
    -name: 파일명으로 검색
    -type: 타입으로 검색(f는 파일, d는 디렉토리 등)
    -exec,\,{}
    exec:find로 찾은 결과에 대해 실행명령
    \:exec의 종료지점
    {}:find로 찾은 대상이 담기는 공간
ex)find .(.은 이 위치에서 라는뜻)-name "*.txt"
# 사용예시
find . -type f -name "*.txt":현재폴더에서 파일타입 중에 .txt로 끝나는 파일명 검색
# 활용예시
ex1)find . -name "*.txt"|xargs grep -rni "hello"
find에서 찾은 목록중에서 특정 단어를 찾는것
xargs는 입력받은 파일을 한줄씩 읽는것
ex2)find . -name "*.txt" -exec echo{}\;
ex3)find . -name "*.txt" -exec cp -r{}./testFolder/\;
find로 찾은파일에 대해 echo명령 실행


find . -name "*.txt" -exec grep -rni "hello"{} \;
find . -name "*.txt" -exec cp -r {} testFolder \;

find . -name "*.txt" -exec cp -r {} ./testFolder \;

# 사용자와 그룹
root계정(슈퍼계정)과 그 외 계정으로 사용자가 구성됨
sudo 키워드는 현재계정에서 root 권한을 이용하여 명령어를 실행하는 프로그램(현재 사용자의 비밀번호 입력)
/etc/sudoers 파일에 sudo를 쓸 수 있는 사용자와 명령어가 따로 정의돼있어서 아무나 명령어 사용불가

apt-get(다운로드받을때,데비안계열) install git ->우분투에서 깃설치(권한이 없어서 그냥쓰면 안됨)
yum(redhat,centos)
su- 계정으로 전환(슈퍼계정으로(root비밀번호 ))
sudo (권한 잠깐 빌려옴 (현재계정의 비밀번호) 빌려옴)

sudo useradd -g kimjongwon -d /home/newuser1 newuser1
=>새로운 유저를 만들면서 그룹지정 및 홈 디렉토리 생성
sudo passwd newuser1
=>신규유저 패스워드 지정
sudo mkdir newuser1
sudo su newuser1
=>신규유저로 계정전환
exit(신규유저 탈출)
4(r)2(w)1(x) -> 7
실습)소유자는 읽기,실행 권한(5),그룹은 실행권한만(1), others는 권한x(0)
=>chmod 510 tests.txt =>cat test.txt =>유저 전환=>cat test.txt

su newuser1 후 전환하고자 하는 계정의 비번(newuser1)의 비번 입력
# 원래사용자로 돌아오려면 
exit

# 계정목록조회
cat/etc/passwd
# 계정삭제
sudo userdel newuser1
sudo userdel -r newuser1 (폴더까지삭제)

chmod u+x test.txt:소유자엑세스 실행권한 축사
chmod g-w test.txt:그룹의 쓰기 권한 제거
chmod o=r test.txt:다른 사용자의 권한을 읽기만 가능하게 설정

chown newuser1:kimjongwon test.txt
ps -e 모든 프로세서가 나옴(간략하게 나옴)
ps -ef 소유자 관계까지 나옴(full format이 나옴, UID, PID, PPID ..등)
# nginx를 찾을때
ps -e | grep -i "nginx"
# 네트워크환경세팅
ifconfig(네트워크환경정보)
ping(hostname/IP) 네트워크 연결상태 확인
nc(넷캣) -zv 또는 telnet : 특정 port까지 열려있는지 확인
ex)nc -zv naver.com 443
netstat:현재 서버에 연결된 네트워크 정보 출력
ssh : 원격호스트와의 터미널 세션 제공 ex)ssh [username]@[hostname/ip] ex2)ssh honggildong@127.0.0.1
scp : 파일전송 ex)scp [source][destination] ex2)scp test.txt 127.0.0.1

리눅스 10문제 db 15문제

# vi 편집기
vi는 명령모드(텍스트를 편집하는 대신 커서를 이동하거나 텍스트를 삭제/복사/붙여넣기함)와 입력모드(타이핑)로 구성되어있다.
파일 열기 - vi 파일명

입력 모드
i:현재 커서부터 입력
a:다음 커서부터 입력
o:다음줄 커서부터 입력
dd:현재 커서가 위치한 행 삭제
yy:현재 커서가 위치한 행 복사
p:현재 행 이후에 붙여넣기

명령 모드
esc
x:현재 커서가 위치한 단어 삭제
:w 파일저장
:q 저장없이 vi 종료
:wq 저장 후 vi 종료
G :파일의 마지막 줄로 이동
gg: 파일의 첫 줄로 이동
Ctrl + f 한 페이지 아래로 이동
Ctrl + b 한 페이지 위로 이동
/ 검색하기