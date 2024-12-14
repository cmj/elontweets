#!/bin/bash
# convert data file sequence numbers to dates
# > set xdata time
# > set timefmt "%Y-%m-%d"
# > set xrange ["2022-11-01":"2024-04-23"]

dateutils.dseq 2022-11-01 now -f '%F' | 
  cat -n | 
  while read num date; do 
    grep "^${num} " /home/cmj/gh/elontweets/master.dat | 
    while read seq tweets likes; do 
      echo "${date} ${tweets} ${likes}"
    done
  done
