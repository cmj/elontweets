# elontweets
Gnuplot graph showing elonmusk likes and tweets.

```
gnuplot -c box.gp
```

Generate csv example:
```
./dates.sh | sed 's/ /,/g;1i date,tweets,likes' > elonmusk.csv
```

[elon_likes.txt](/elon_likes.txt) contains likes since ~Jan 2023. Bracket
timestamp is when it was scraped (bot scrapes every 7mins), timestamp in parens
is source tweet day and time of the week it was posted.

![elonmusk graph](/elonmusk.png)

Todo:
- use xdata time 
