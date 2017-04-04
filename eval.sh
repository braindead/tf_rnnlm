#!/bin/bash

threshold=90
if [ $1 -gt 0 ]
then
    threshold=$1
fi

file='../../phrases-new.csv'
if [ -f $2 ]
then
    file=$2
fi


echo -n "bad phrases at $threshold: "
for i in {1..5}
do
    shuf -n 100 $file | cut -d '	' -f1 | python word_lm.py --action ppl --ppl_threshold $threshold --ppl_compare gt --model_dir models/latest 2>/dev/null | wc -l
done | awk '{ sum += $1; n++; printf "%d ", $1 } END { if (n > 0) printf "AVG: %.2f%\n", sum / n; }'

echo -n "good phrases at $threshold: "
for i in {1..5}
do
    shuf -n 100 $file | cut -d '	' -f2 | python word_lm.py --action ppl --ppl_threshold $threshold --ppl_compare lt --model_dir models/latest 2>/dev/null | wc -l
done | awk '{ sum += $1; n++; printf "%d ", $1 } END { if (n > 0) printf "AVG: %.2f%\n", sum / n; }'
