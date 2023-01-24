#!/bin/sh
Files=$(find . -type f -iname '*'.jpg -o -iname '*'.png)

# printf  "$Files\n"
for File in $Files
do
    echo $File
    cwebp -preset photo -metadata icc -sharp_yuv -lossless  $File -o "${File%.*}.webp" -progress -short $File
    printf "\n----------------\n\n"
done

# webpというディレクトリがなければ作成
if [ ! -d "webp" ]; then
  mkdir webp
fi

# .webpという拡張子のファイル全てを/webpに移動
find . -name "*.webp" -exec mv {} webp/ \;
