root = exports ? this
root.cache =
  get: (key) -> sessionStorage.getItem(key)
  set: (key, value) -> sessionStorage.setItem(key, value)
