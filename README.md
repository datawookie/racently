# Wrapper for @racently API

There are currently only two endpoints available.

The `search_athlete()` function allows you to search for an athlete by name. The function accepts a regular expression, so there's quite a lot of flexibility in the way that the name can be specified.

```
search_athlete("Mann$")
```

The `athlete()` function returns detailed information on a specific athlete.

```
athlete("7abaea70-337a-4c7a-9d13-31306dca26a8")
athlete("7ef6fbc8-4169-4a98-934e-ff5fa79ba103")
```
