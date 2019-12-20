#!/bin/bash

######## ACESSAR A PASTA TORRENT ###########
cd /home/debian-media/Downloads/Torrent/

####### MOVER ARQUIVOS NO MESMO DIRETORIO #########
find /home/debian-media/Downloads/Torrent/ -ctime 0 -name '*.srt' -exec mv {} . \;
find /home/debian-media/Downloads/Torrent/ -ctime 0 -size +300M -name '*.mp4' -exec mv {} . \;
find /home/debian-media/Downloads/Torrent/ -ctime 0 -size +300M -name '*.mkv' -exec mv {} . \;
find /home/debian-media/Downloads/Torrent/ -ctime 0 -size +300M -name '*.avi' -exec mv {} . \;

######## RENOMEAR ARQUIVOS ###########
for i in *\(*\)*; do j=`echo $i |sed -e 's/[()]//g'`; mv "$i" "$j"; done
rename 'y/[comandotorrents.com].//' *
rename 'y/ /./' *
rename 'y/A-Z/a-z/' *.*
rename 's/á/a/g' *.*
rename 's/ã/a/g' *.*
rename 's/â/a/g' *.*
rename 's/à/a/g' *.*
rename 's/é/e/g' *.*
rename 's/ẽ/e/g' *.*
rename 's/ê/e/g' *.*
rename 's/í/i/g' *.*
rename 's/õ/o/g' *.*
rename 's/ó/o/g' *.*
rename 's/ú/u/g' *.*
rename 's/ù/u/g' *.*
rename 's/Á/a/g' *.*
rename 's/Ã/a/g' *.*
rename 's/Â/a/g' *.*
rename 's/À/a/g' *.*
rename 's/É/e/g' *.*
rename 's/Ẽ/e/g' *.*
rename 's/Ê/e/g' *.*
rename 's/Í/i/g' *.*
rename 's/Õ/o/g' *.*
rename 's/Ó/o/g' *.*
rename 's/Ú/u/g' *.*
rename 's/Ù/u/g' *.*
rename 's/ç/c/g' *.*

######## MOVER OS ARQUIVOS PARA OS DESTINOS ###########
find /home/debian-media/Downloads/Torrent/ -ctime 0 -name '*.srt' -exec mv {} ./SRT \;
find /home/debian-media/Downloads/Torrent/ -ctime 0 -size +300M -name '*.mp4' -exec mv {} ./MP4 \;
find /home/debian-media/Downloads/Torrent/ -ctime 0 -size +300M -name '*.mkv' -exec mv {} ./MKV \;
find /home/debian-media/Downloads/Torrent/ -ctime 0 -size +300M -name '*.avi' -exec mv {} ./MKV \;

sh /home/debian-media/Downloads/Torrent/MP4/move.sh
sh /home/debian-media/Downloads/Torrent/SRT/move.sh
sh /home/debian-media/convert.sh
