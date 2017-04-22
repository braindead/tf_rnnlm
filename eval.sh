#!/bin/bash

threshold=100
if [ ! -z $1 ]
then
    threshold=$1
fi

action="probs"
if [ ! -z $2 ]
then
    action=$2
fi

#set -x

file='../phrases-shuf.csv'
if [[ ! -z $3 ]] && [[ -f $3 ]]
then
    file=$3
fi

echo -n "bad phrases at $threshold: "
for i in {0..4}
do
    range_start=$((i*100+1))
    range_end=$(((i+1)*100))
    sed -n -e "${range_start},${range_end}p" $file | cut -d '	' -f1 | python word_lm.py --action $action --threshold $threshold --model_dir models/latest 2>/dev/null | wc -l
done | awk '{ sum += $1; n++; printf "%d ", $1 } END { if (n > 0) printf "AVG: %.2f%\n", sum / n; }'

echo -n "good phrases at $threshold: "
for i in {0..4}
do
    range_start=$((i*100+1))
    range_end=$(((i+1)*100))
    sed -n -e "${range_start},${range_end}p" $file | cut -d '	' -f2 | python word_lm.py --action $action --threshold $threshold --model_dir models/latest 2>/dev/null | wc -l
done | awk '{ sum += 100 - $1; n++; printf "%d ", 100 - $1 } END { if (n > 0) printf "AVG: %.2f%\n", sum / n; }'
