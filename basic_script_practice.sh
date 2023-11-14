echo "script practice1 start"
touch file1.txt
touch file2.txt
echo "Hello from file1" >> file1.txt
echo "Hello from file2" >> file2.txt
cp file1.txt file_backup.txt
mv file2.txt file2_rename.txt
echo "script practice1 complete"