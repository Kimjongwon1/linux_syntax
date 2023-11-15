# 이 파일이 있는지 없는지 검사 있으면, exist 없으면,does~
if [ -f "first.txt" ];
then
	echo "exist"
else
	echo "does not exist"
fi