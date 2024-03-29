#!/bin/bash
#Clean Install
rm -f "/data/data/com.termux/files/home/bin/termux-url-opener"
mkdir /data/data/com.termux/files/home/bin

#Installing dependencies (and cleaning the leftovers)
pkg update -y && pkg install wget python ffmpeg termux-api -y
yes | pip install youtube-dl yt-dlp
pkg clean && pip cache purge


#Installing the script
wget -P /data/data/com.termux/files/home/bin/ --no-check-certificate "https://raw.githubusercontent.com/daywalk3r666/Termux-Downloader-Script/main/termux-url-opener" 
chmod +x "/data/data/com.termux/files/home/bin/termux-url-opener"
termux-setup-storage
