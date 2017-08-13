## `sed`

- `stream editor`
- Used to modify the contents of a file, usually placing the contents into a new file
- Filters text as well as perform substitutions in data streams

```
[Input stream]  ======>  [Working stream]  ======> [Output stream]

The entire list of operations/modifications is applied over the data in the working space
```

### Syntax
- The `-e` command option allows you to specify multiple editing commands simultaneously at the command line.

Specifying editing commands at the command line
```
sed -e command filename
```

Specifying a scriptfile containing sed commands
```
sed -f scriptfile filename  
```

### Basic operations

#### Only first string occurrence in a line
```
sed s/pattern/replace_string/ file 
```

#### All string occurrences in a line
```
sed s/pattern/replace_string/g file 
```

#### All string occurrences in a range of lines
e.g., line 1 - 3
```
sed 1,3s/pattern/replace_string/g file  
```

#### All occurrences and move the result to file2
```
$ sed s/pattern/replace_string/g file1 > file2
```

==

```bash
$ cat test
    masa    ruby    programmer
    ch      english analyst
    sb      java    coffee
====================================
$ cat test | sed s/m/N/
    Nasa    ruby    programmer
    ch      english analyst
    sb      java    coffee
------------------------------------
$ cat test | sed s/m/N/g
    Nasa    ruby    prograNNer
    ch      english analyst
    sb      java    coffee
------------------------------------
$ sed s/m/N/ test
    Nasa    ruby    programmer
    ch      english analyst
    sb      java    coffee
------------------------------------
$ sed s/m/N/g test
    Nasa    ruby    prograNNer
    ch      english analyst
    sb      java    coffee
------------------------------------
```
