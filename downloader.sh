#!/bin/bash

echo "To download as mp3 type 1"
echo "To download as mp4 type 2"

read option

if [ "$option" -eq "1" ]
then
	youtube-dl --extract-audio --audio-format mp3 --prefer-ffmpeg $1 -o /data/data/com.termux/files/home/storage/shared/Music/%(title)s.%(ext)s
elif [ "$option" -eq "2" ]
then
	youtube-dl --format "bestvideo+bestaudio[ext=m4a]/bestvideo+bestaudio/best" --merge-output-format mp4 $1 /data/data/com.termux/files/home/storage/shared/Movies/youtube/%(title)s.%(ext)s
fi
