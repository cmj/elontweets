# elontweets
Gnuplot graph showing elonmusk likes and tweets.

Source: https://gist.github.com/cmj/5e81b6652ae3b94addda114ddb40b7f1

```
gnuplot -c box.gp
```

Generate csv example:
```
./dates.sh | sed 's/ /,/g;1i date,tweets,likes' > out.csv
```
![elonmusk graph](/elonmusk.png)
