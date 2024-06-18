#!/usr/bin/env sh

#file1="$0"
#file2="$1"
#file3="$2"
#output="$2"


#cat "$file1" > list.txt
#cat "$file2" > list.txt
#cat "$file3" > list.txt
#cat "bun_0.mkv" > list.txt

#ffmpeg -i bun_0.mkv output.mp4


ffmpeg -i bun_0.mkv -ss 00:00:09 -t 00:10:27 -c:v copy -c:a copy a.mkv

ffmpeg -i bun_1.mkv -ss 00:00:09 -t 00:03:40 -c:v copy -c:a copy b.mkv

ffmpeg -i bun_1.mkv -ss 00:04:07 -t 00:00:37 -c:v copy -c:a copy c.mkv

ffmpeg -i rawn.mkv -ss 00:00:14 -t 00:00:12 -filter:a "valume=0.6" -c:v copy -c:a copy d.mkv

ffmpeg -i bun_2.mp4 -c:v copy -c:a copy e.mkv

echo file a.mkv >  mylist.txt
echo file d.mkv >> mylist.txt
echo file b.mkv >> mylist.txt
echo file c.mkv >> mylist.txt
echo file e.mkv >> mylist.txt


ffmpeg -f concat -i mylist.txt -c copy output.mp4


