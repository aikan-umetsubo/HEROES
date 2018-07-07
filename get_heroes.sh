#!/bin/bash

# ヒーロー列伝のポスター画像フォルダのURL
BASEURL='http://www.jra.go.jp/gallery/ads/heroes/popup/images/'

# ヒーローの数（2018/07/01現在、ハイセイコーからオジュウチョウサンまで82頭）
MAX=82

# seqで連番を生成してループ、curlで画像を取得
for NUM in `seq -f %003g 1 $MAX`
do
    curl ${BASEURL}${NUM}m.jpg > ${NUM}m.jpg
done

