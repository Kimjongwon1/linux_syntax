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