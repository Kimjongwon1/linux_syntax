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