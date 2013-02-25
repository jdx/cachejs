cachejs
=======

Client-side caching

Usage
=====

```coffeescript
cachedResponse = cache.get(["articles", article_id])
if(cachedResponse) {
  console.log "cached!"
  console.log cachedResponse
} else {
  $.ajax({
    url: "/articles",
    data: { id: article_id }
    success: function(data) {
      cache.set(["articles", article_id], data)
      console.log "uncached. Saved result for next call"
      console.log data
    }
  })
}
```
