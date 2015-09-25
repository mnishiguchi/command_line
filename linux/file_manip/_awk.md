## `awk`
- Extract and then print specific contents of a file
- Used as a data extraction and reporting tool
- Works well with fields (containing a single piece of data, essentially a column) and records (a collection of fields, essentially a line in a file)

### Syntax

#### Specify a command directly at the command line
```
awk ‘command’ var=value file  
````

#### Specify a file that contains the script to be executed along with f
````  
awk -f scriptfile var=value file    
```

### Basic operations
-  reads the input file one line at a time
-  matches the given pattern in the given order for each line
-  performs the requested action.
-  `-F` option: specifies a field separator character
    + e.g., `-F:` - if the `/etc/passwd` file uses `:` to separate the fields
- The command/action in `awk` needs to be surrounded with `'`

#### Print the contents of the entire file
- Similar to `cat /etc/passwd`, `less /etc/passwd`
- `$0`: Entire file
```
awk '{ print $0 }' /etc/passwd  
```

#### Print first field (column) of every line
- `$1`: First column

```
awk -F: '{ print $1 }' /etc/passwd  
```

#### Print first and sixth field of every line
```
awk -F: '{ print $1 $6 }' /etc/passwd   
```

#### Extract a column and print a unique list
- Display a unique list of all the shells used for users in `/etc/passwd`
- `man 5 passwd` for checking which field in `/etc/passwd` holds the shell 

```
$ awk -F: '{ print $7 }' /etc/passwd | sort | uniq

/bin/bash
/bin/sh
/usr/bin/false
/usr/sbin/uucico
```
