Examples of automated `shot-scraper` of `nitter` tweets and likes.

```
shot-scraper -s '.main-thread' \
    -h 2000 \
    --retina http://nitter/i/status/${id} \
    -o ${id}.png \
    -j 'var d = document.querySelector(".tweet-header"); var t = document.createTextNode("❤️ Elon Musk liked"); d.prepend(t);'
```

![1795852803979534483](/screenshots/1795852803979534483.png)
![1796736778637893925](/screenshots/1796736778637893925.png)
![1796748470579012070](/screenshots/1796748470579012070.png)
![1796793045586743567](/screenshots/1796793045586743567.png)
![1796793835731014058](/screenshots/1796793835731014058.png)
