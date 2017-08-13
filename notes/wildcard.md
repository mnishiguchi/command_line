# Wildcard

![wild_card_table](https://github.com/mnishiguchi/command_line/blob/master/_notebook/wildcard.png)

```
# List files with names starting with g and containing five letters.
$ ls g????

# List files whose names begin with mk and end with any characters.
$ ls mk*

# List files having five letter names starting with g and second character between a-n.

$ ls g[a-n]???

# List five letter named files starting with g and not having the second character between a-m.
$ ls g[!a-m]???
```
