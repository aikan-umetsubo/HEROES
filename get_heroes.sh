#!/bin/bash

# ヒーロー列伝のポスター画像フォルダのURL
BASEURL='https://jra.jp/gallery/ads/heroes/popup/images/'

# ヒーローの数（2024/10/27現在、ハイセイコーからドウデュースまで97頭）
MAX=97

# seqで連番を生成してループ、curlで画像を取得
for NUM in `seq -f %003g 1 $MAX`
do
    curl --silent ${BASEURL}${NUM}m.jpg > ${NUM}m.jpg
    echo ${NUM}m.jpg: Download complete.
done

