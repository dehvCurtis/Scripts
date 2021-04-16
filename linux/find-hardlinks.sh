#run in terminal: 
#$ chmod +x /script/location/
#$ ./find-hardlinks.sh | tee hardlinks.txt
find / -type f  -printf '%n %p\n' | awk '$1 > 1{$1="";print}'
