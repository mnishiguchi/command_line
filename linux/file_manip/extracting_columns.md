# Extracting columns from column-based files

==

## `cut`

- Extract specific columns
- Default column separator: a single tab character

### Specify a field separator character
- `-d" "`: The fields are separated by a single blank space
- `-d:`: The fields are separated by `:`

### Display the 3rd column delimited by the default tab character

```bash
$ cat test
    masa  ruby     programmer
    ch    english  analyst
    sb    java     coffee

$ cat test | cut -f3
    programmer
    analyst
    coffee
```

### Display in a column a unique list of all the shells used for users in
`/etc/passwd`
```bash
$ cat /etc/passwd | cut -d: -f7 | sort -u
    /bin/bash
    /bin/sh
    /usr/bin/false
    /usr/sbin/uucico
```

==

## `awk`
- Extract and then print specific contents of a file

### Specify a field separator character
- `-F:` option if the `/etc/passwd` file uses `:` to separate the fields
- IMPORTANT: The command/action in `awk` needs to be surrounded with `'`

### Print first column of every line, separated by a space
```
awk -F: '{ print $1 }' /etc/passwd  
```

### Print first and sixth field of every line
```
awk -F: '{ print $1 $6 }' /etc/passwd   
```

### Display the 3rd column delimited by the default tab character

```bash
$ cat test
    masa  ruby     programmer
    ch    english  analyst
    sb    java     coffee

$ awk '{ print $3 }' test
    programmer
    analyst
    coffee
```

### Display in a column a unique list of all the shells used for users in
`/etc/passwd`

```bash
$ awk -F: '{ print $7 }' /etc/passwd | sort | uniq
    /bin/bash
    /bin/sh
    /usr/bin/false
    /usr/sbin/uucico
```

