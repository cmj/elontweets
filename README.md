# elontweets
#### Gnuplot graph showing @elonmusk likes and tweets.

![elonmusk graph](/elonmusk.png)

Generate graph:

```
$ gnuplot -c box.gp
```

### Notes
 - [/totals](/totals) shows rolling month statistics and sorted daily-max tables. 
 - [elon_likes.txt](/elon_likes.txt) contains Likes since 2023-01-16 until 2024-06-13
 - [elonmusk.csv](/elonmusk.csv) is a daily tweets and likes csv file.
 - [stats-5m.csv](/stats-5m.csv) contains activity in 5 minute intervals.
 - [tweets.txt](/tweets.txt) stores (almost) all tweets since 2022-11-01
 - Retweets stored in [retweets.txt](/retweets.txt) and tweet IDs in [ids.dat](/ids.dat)
 - Timezone is America/Los_Angeles. However, converting to America/Chicago (CST6CDT) is considered.

### Deleted Tweets

Screenshots of (most) [deleted tweets](deleted/)

### App / device statistics

|Tweets|Source|
|--:|--|
|53594|Twitter for iPhone|
|387|Twitter Web Client|
|153|Twitter Web App|
|91|Instagram|
|10|Twitter for Websites|
|9|iOS|
|7|Periscope|
|4|Mobile Web|
|3|Photos on iOS|
|1|Tweetlogix|

---

Todo:
 - Use xdata time. 
 - Shorten graph timespan.
 - Dynamic sources (chartjs?)

See also:
 - Automated [Elon Musk friends tracker](https://github.com/cmj/emt)
