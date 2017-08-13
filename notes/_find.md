# The find command

- Recurses down the filesystem tree from any particular directory (or set of directories) and locates files that match specified conditions.
- The default pathname is always the present working directory. (when no arguments are given)
- Use options to shorten the list

```bash
$ find ~ -type d -name *practice_code
/Users/masa/Desktop/udc_c++/cpp_practice_code
/Users/masa/Desktop/udc_web_dev/html_practice_code
/Users/masa/js_practice_code
/Users/masa/NetBeansProjects/java_practice_code
```

```bash
$ find . -name "*.html" -ls
17636134       16 -rw-r--r--    1 masa             staff                5831 Feb 18 22:18 ./_original/index.html
17561798       16 -rw-r--r--    1 masa             staff                7360 Jan  9 07:56 ./readme.html
```

==

## Options

### Filter
- **-name**   (only list files with a certain pattern in their name)
- **-iname**  (ignore the case of file names)
- **-type d** (restrict the results to directory)
- **-type l** (restrict the results to symbolic link)
- **-type f** (restrict the results to a regular file)

### Search then run a command on the result
- **-exec**   (run commands on the search result)
- **-ok**     (like the -exec but ask the user first)

### Finding Files Based on Time and Size
- **-ctime** : Often the day the file was first created. Specifically when the inode meta-data (i.e., file ownership, permissions, etc) last changed;  
- **-atime** : the day the file was accessed/last read
- **-mtime** :  the day the file was modified/last written
- **-size**  : file size
         
Note : There are similar options for times in minutes (as in -cmin, -amin, and -mmin).

### How to specify the number
- **n**   (exact value)
- **+n** (greater than that number)
- **-n** (less than that number)

### the units for size
- default : 512-byte blocks
- bytes (**c**), kilobytes (**k**), megabytes (**M**), gigabytes (**G**), etc.

==

## Examples

```
# Search for files and directories named "gcc":
     $ find /usr -name gcc
```

```
# Search for only directories named "gcc":
     $ find /usr -type d -name gcc
```

```
# Search for only regular files named "test1":
     $ find /usr -type f -name test1
```

```
# Search for and remove all files that end with .swp:
     $ find -name "*.swp" -exec rm {} ’;’

# Note: The {} is a place holder that will be filled with the search result
# Note: End the command with either ’;’ or \;
```

```
# Search for files based on time:
     $ find / -ctime 3
```

```
# Search for files based on sizes:
     $ find / -size 0
```

```
# Search for files greater than 10 MB in size and running a command on those files:
     $ find / -size +10M -exec command {} ’;’
```

```
# Search for a file with name gcc in the /usr folder using find command.
     $ find /usr -type f -name gcc
```

```
# Search for a directory with filename gcc, in the /usr folder using find command.
     $ find /usr -type d -name gcc
```

```
# Search for files in the current directory which were modified today.
     $ find -type f -mtime 0
```

```
# Search for files with size 0 bytes.
     $ find -type -f -size 0
```
