#!/bin/bash
#echo $1
#start=$(date +%s)
time ./$1 -1  < sample1.ref > sample1.rb2
time ./$1 -1  < sample2.ref > sample2.rb2
time ./$1 -1  < sample3.ref > sample3.rb2
#end=$(date +%s)
#runtime=$((end-start))
#echo $runtime
