## `cut`

- Used for manipulating column-based files
- Designed to extract specific columns
- Default column separator: a single tab character

### Usage

#### Display the third column delimited by a blank space
- `-d" "`: delimited by a blank space
- `-f3  `: third coloumn

```
ls -l | cut -d" " -f3
```

### examples

```
$ cat test
    masa  ruby     programmer
    ch    english  analyst
    sb    java     coffee

$ cat test | cut -f3
    programmer
    analyst
    coffee
```

Display in a column a unique list of all the shells used for users in
`/etc/passwd`
```
$ cat /etc/passwd | cut -d: -f7 | sort -u
    /bin/bash
    /bin/sh
    /usr/bin/false
    /usr/sbin/uucico
```
