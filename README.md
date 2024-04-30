# elontweets
Gnuplot graph showing elonmusk likes and tweets.

```
gnuplot -c box.gp
```

Generate csv example:
```
./dates.sh | sed 's/ /,/g;1i date,tweets,likes' > out.csv
```
![elonmusk graph](/elonmusk.png)

Todo:
- use xdata time 
