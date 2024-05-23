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

TZ = america/los_angeles

![elonmusk graph](/elonmusk.png)

Top 20 users `@elonmusk` has 'liked':
```
1   1410  @cb_doge
2   737   @teslaownersSV
3   435   @BillyM2k
4   352   @WholeMarsBlog
5   315   @EvaFoxU
6   313   @Teslaconomics
7   290   @SawyerMerritt
8   275   @dogeofficialceo
9   266   @Rainmaker1973
10  233   @GailAlfarATX
11  220   @stclairashley
12  191   @alx
13  186   @SpaceX
14  177   @TheRabbitHole84
15  171   @stillgray
16  168   @farzyness
17  158   @Kristennetten
18  158   @dvorahfr
19  156   @xDaily
20  155   @andst7
```

Todo:
- use xdata time 
