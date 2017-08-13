# File search

## locate vs find vs mdfind vs grep

[locate vs find: usage, pros and cons of each other](http://unix.stackexchange.com/questions/60205/locate-vs-find-usage-pros-and-cons-of-each-other)

### locate(1)
- Better when you're just trying to find a particular file by name, which you know exists, but you just don't remember where it is exactly.

### find(1)
- Better when you have a focused area to examine
- Better when you need any of its many advantages

### mdfind(1)
- OS X

### grep(1)
- Searches **each line** of input files for a **specified string**.

==

## The locate command

- Performs a search through the database of files and directories on your system
- Matches all entries that contain a specified character string
sometimes a very long list
- Utilizes the database created by another program, updatedb
- Use `grep` as a filter to shorten the list

### `locate` + `grep`
- Useful technique to filter the search result.
- Prints only the lines that contain one or more specified strings

e.g., listing all files and directories with both "index.html" and "ninjas" in their name 
```
$ locate index.html | grep ninjas
```

### `updatedb`

- The `locate` utilizes the database created by `updatedb`
- Most Linux systems run this automatically once a day
- Can update it at any time by just running `updatedb` from the command line as the root user

```
$ sudo updatedb
```

==

## The find command

- Recurses down the filesystem tree from any particular directory (or set of directories) and locates files that match specified conditions.
- The default pathname is always the **present working directory** (when no arguments are given)
- Commonly used options to shorten the list

==

## mdfind (OS X)
- [mdfind(1) Mac OS X Manual Page](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/mdfind.1.html)

e.g., listing all files and directories with both "index.html" and "ninjas" in their name 
```
$ mdfind index.html | grep ninjas
```
