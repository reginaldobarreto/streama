#!/bin/bash

if pgrep "ffmpeg" > /dev/null
then

# echo Rodando
at now + 15 minutes -f convert.sh
 else

# echo Parado

for file in $( find ./ -iname "*.mkv" -o -iname "*.avi")
	do
  OIFS="$IFS"
  IFS=$'\n'
# usado em caso de audio saindo em ingles - menor velocidade #
#  ffmpeg -i "$file" -vcodec copy -acodec aac -strict -2 "${file%.*}.mp4"
# usado apenas para mudar o formato do arquivo - melhor velocidade #
  ffmpeg -i "$file" -codec copy "${file%.*}.mp4"
  mv "${file%.*}.mp4" /home/debian-media/Vídeos/Filmes/
  rm "$file"
  IFS="$OIFS"
done

fi
