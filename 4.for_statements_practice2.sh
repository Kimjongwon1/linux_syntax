# for문을 이용하여 hello world1~100까지
for a in {1..100}
do
    echo "hello world$a.txt"
done

# if,for문을 이용하여 hello world1~100까지 특정파일에 넣기(다시 돌려도 오류가 나면 안됨)
if [ -f "hello.txt" ];
then
	echo "exist"
else
	touch "hello.txt"
fi

for a in {1..100}
do
    echo "hello world$a.txt" > hello.txt
done





# 강사님
echo "start"
if [-d"mydir2"]; then
    cd mydir2
else
    mkdir mydir2
    cd mydir2
fi
if [ -f "test.txt"]; then
    rm -rf test.txt
    touch test.txt
else
    touch test.txt
fi
for a in {1..100}
do
    echo "hello world$a">> test.txt
done

# 내꺼
if [ -f "hello.txt" ];
then
        rm -rf hello.txt
        touch hello.txt
        echo "exist"
else
        touch "hello.txt"
fi

for a in {1..100}
do
    echo "hello world$a.txt" >> hello.txt
done


