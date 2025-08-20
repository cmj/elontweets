# elontweets
#### Gnuplot graph showing @elonmusk likes and tweets.

![elonmusk graph](/elonmusk.png)

Generate graph:

```
$ gnuplot -c box.gp
```

### Notes
 - [elonmusk-all-tweets.csv](elonmusk-all-tweets.csv) is every available tweet since 2010 and retweets starting Jan 2025, all with UTC timestamps.  
 - [/totals](/totals) shows rolling month statistics and sorted daily-max tables. 
 - [elon_likes.txt](/elon_likes.txt) contains Likes since 2023-01-16 until 2024-06-13
 - [elonmusk.csv](/elonmusk.csv) is a daily tweets and likes csv file.
 - [stats-5m.csv](/stats-5m.csv) contains activity in 5 minute intervals.
 - [tweets.txt](/tweets.txt) stores (almost) all tweets since 2022-11-01. Timezone is America/Los_Angeles.
 - Retweets stored in [retweets.txt](/retweets.txt) and tweet IDs in [ids.dat](/ids.dat)

### Deleted Tweets

Screenshots of (most) [deleted tweets](deleted/)

### Stats

As of 2025-08-20

<table>
<tr><th>Replied to most</th><th>Retweeted most</th></tr><tr><td>

|#|User|
|--:|--|
|1465|@cb_doge|
|1196|@wholemarsblog|
|1096|@tesla|
|1016|@teslaownerssv|
|985|@billym2k|
|949|@spacex|
|848|@marionawfal|
|781|@stillgray|
|726|@erdayastronaut|
|668|@rothmus|
|645|@alx|
|627|@endwokeness|
|598|@wallstreetsilv|
|557|@sawyermerritt|
|552|@therabbithole84|

  </td><td>
  
|#|User|
|--:|--|
|616|@cb_doge|
|581|@MarioNawfal|
|430|@teslaownersSV|
|371|@SpaceX|
|149|@Starlink|
|130|@SawyerMerritt|
|115|@america|
|110|@Tesla|
|108|@AutismCapital|
|102|@Rothmus|
|98|@ElonClipsX|
|98|@DimaZeniuk|
|94|@TheRabbitHole84|
|76|@DefiyantlyFree|
|73|@johnkrausphotos|

  </td><tr>
</table>

### App / device statistics

|Tweets|Source|
|--:|--|
|69379|Twitter for iPhone|
|387|Twitter Web Client|
|200|Twitter Web App|
|91|Instagram|
|11|Twitter for Websites|
|10|Periscope|
|9|iOS|
|4|Mobile Web|
|3|Photos on iOS|
|2|Twitter Media Studio|
|1|Tweetlogix|

---

Todo:
 - Use xdata time. 
 - Shorten graph timespan.
 - Dynamic sources (chartjs?)

See also:
 - Automated [Elon Musk friends tracker](https://github.com/cmj/emt)
