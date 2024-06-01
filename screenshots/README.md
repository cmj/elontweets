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
![1796794143772901399](/screenshots/1796794143772901399.png)
![1796795162028335377](/screenshots/1796795162028335377.png)
![1796912909101961575](/screenshots/1796912909101961575.png)
