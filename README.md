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

As of 2025-04-20

<table>
<tr><th>Replied to most</th><th>Retweeted most</th></tr><tr><td>

|#|User|
|--:|--|
|1302|@cb_doge|
|859|@WholeMarsBlog|
|854|@BillyM2k|
|774|@teslaownersSV|
|697|@stillgray|
|680|@MarioNawfal|
|578|@Rothmus|
|571|@alx|
|559|@WallStreetSilv|
|538|@EndWokeness|
|496|@TheRabbitHole84|
|444|@stclairashley|
|410|@Erdayastronaut|
|392|@SawyerMerritt|
|349|@PPathole|
  
  </td><td>
  
|#|User|
|--:|--|
|472|@MarioNawfal|
|425|@cb_doge|
|403|@SpaceX|
|269|@teslaownersSV|
|145|@Tesla|
|108|@america|
|97|@AutismCapital|
|82|@Rothmus|
|81|@SawyerMerritt|
|79|@TheRabbitHole84|
|74|@Starlink|
|74|@DefiyantlyFree|
|63|@RapidResponse47|
|59|@libsoftiktok|
|56|@ElonClipsX|
  
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
