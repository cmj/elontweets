# elontweets
Gnuplot graph showing elonmusk likes and tweets.

```
gnuplot -c box.gp
```

Generate csv example:
```
./dates.sh | sed 's/ /,/g;1i date,tweets,likes' > elonmusk.csv
```

Datawrapper visualization: https://datawrapper.dwcdn.net/Qp2Ff/1/

[elon_likes.txt](/elon_likes.txt) contains likes since ~Jan 2023. Bracket
timestamp is when it was scraped (bot scrapes every 7mins), timestamp in parens
is source tweet day and time of the week it was posted.

TZ = america/los_angeles

![elonmusk graph](/elonmusk.png)

### Deleted Tweets

Screenshots of (most) [deleteted tweets](deleted/)

---

Top 20 users `@elonmusk` has 'liked':
Rank|Likes|User
---|---|---
1   |1536 |@cb_doge
2   |766  |@teslaownersSV
3   |441  |@BillyM2k
4   |370  |@WholeMarsBlog
5   |331  |@Teslaconomics
6   |323  |@EvaFoxU
7   |310  |@SawyerMerritt
8   |280  |@dogeofficialceo
9   |276  |@Rainmaker1973
10  |239  |@GailAlfarATX
11  |231  |@stclairashley
12  |197  |@alx
13  |192  |@SpaceX
14  |184  |@MarioNawfal
15  |182  |@stillgray
16  |181  |@TheRabbitHole84
17  |170  |@farzyness
18  |163  |@dvorahfr
19  |162  |@Kristennetten
20  |159  |@xDaily

Todo:
- use xdata time 

See also:
- Automated [Elon Musk friends tracker](https://github.com/cmj/emt)
