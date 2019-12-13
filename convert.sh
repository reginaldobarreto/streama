#!/bin/bash

if pgrep "ffmpeg" > /dev/null
then

# echo Rodando
at now + 15 minutes -f convert.sh
 else

# echo Parado


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


for file in $( find ./ -iname "*.mkv" -o -iname "*.avi")
	do
  OIFS="$IFS"
  IFS=$'\n'
# usado em caso de audio saindo em ingles - menor velocidade #
  ffmpeg -i "$file" -vcodec copy -acodec aac -strict -2 "${file%.*}.mp4"
# usado apenas para mudar o formato do arquivo - melhor velocidade #
#  ffmpeg -i "$file" -codec copy "${file%.*}.mp4"
  mv "${file%.*}.mp4" /home/debian-media/Vídeos/Filmes/
  rm "$file"
  IFS="$OIFS"
done

fi
