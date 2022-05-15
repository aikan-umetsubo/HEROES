#!/bin/bash

# ヒーロー列伝のポスター画像フォルダのURL
BASEURL='http://www.jra.go.jp/gallery/ads/heroes/popup/images/'

# ヒーローの数（2022/05/15現在、ハイセイコーからリスグラシューまで91頭）
MAX=91

# seqで連番を生成してループ、curlで画像を取得
for NUM in `seq -f %003g 1 $MAX`
do
    curl --silent ${BASEURL}${NUM}m.jpg > ${NUM}m.jpg
    echo ${NUM}m.jpg: Download complete.
done

