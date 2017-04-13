#!/bin/bash

threshold=90
if [ ! -z $1 ]
then
    threshold=$1
fi

file='../phrases5-shuf.csv'

echo -n "bad phrases at $threshold: "
for i in {0..4}
do
    range_start=$((i*100+1))
    range_end=$(((i+1)*100))
    sed -n -e "${range_start},${range_end}p" $file | cut -d '	' -f1 | python word_lm.py --action ppl --ppl_threshold $threshold --ppl_compare gt --model_dir models/latest 2>/dev/null | wc -l
done | awk '{ sum += $1; n++; printf "%d ", $1 } END { if (n > 0) printf "AVG: %.2f%\n", sum / n; }'

echo -n "good phrases at $threshold: "
for i in {0..4}
do
    range_start=$((i*100+1))
    range_end=$(((i+1)*100))
    sed -n -e "${range_start},${range_end}p" $file | cut -d '	' -f2 | python word_lm.py --action ppl --ppl_threshold $threshold --ppl_compare lt --model_dir models/latest 2>/dev/null | wc -l
done | awk '{ sum += $1; n++; printf "%d ", $1 } END { if (n > 0) printf "AVG: %.2f%\n", sum / n; }'
