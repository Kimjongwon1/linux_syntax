# practice3 start 문구 출력
# mydir3 폴더 생성
# 폴더로 이동
# 폴더에서 file1~100까지 만들고 해당파일마다 hello world from file 1, 2...(파일1에는 from file2, 2에는 2)
# practice completed 출력

echo "practice3 start"
mkdir mydir3
cd mydir3
for a in {1..100}
do  
    touch "file$a.txt"
    echo "hello world from file $a">> file$a.txt
done