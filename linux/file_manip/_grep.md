# `grep`

- Searches any given input files, selecting lines that match one or more patterns
- Used as a primary text searching tool
- Scans files for specified patterns and can be used with
    + regular expressions
    + simple strings

## Sublime equivalent
- `Command` + `Shift` + `F`

==

## Commmon operations

### Search for a pattern in a file and print all matching lines
```
grep [pattern] <filename>  
```

### Print all lines that DO NOT match the pattern
``` 
grep -v [pattern] <filename>    
```

### Print the lines that contain the numbers 0 through 9
```
grep [0-9] <filename>   
```

### Print the specified number of lines before and after
- specified number of lines **above and below the pattern** for matching the pattern

e.g., the number of lines is specified as 3
```
grep -C 3 [pattern] <filename>  
```

### Locate a specific string in the filesystem recursively from a specified directory
- `grep -r <string> <dirname>`

```bash
$ grep -r "pluralize" ./app

./app/views/shared/_error_messages.html.haml: The form contains #{pluralize(object.errors.count, "error")}.
./app/views/shared/_user_info.html.haml: = pluralize(current_user.microposts.count, "micropost")
```

### Filter a list
- `$ rake routes | grep user`
- `$ locate index.html | grep ninjas`
- `$ mdfind index.html | grep ninjas`
- `$ ps aux | grep spring`

==

## examples

```
$ cat languages
    Ruby
    Japanese
    JavaScript
    C++
    TypeScript
    Python
    Ruby
============================
$ grep J languages
    Japanese
    JavaScript
----------------------------
$ grep [J,R] languages
    Ruby
    Japanese
    JavaScript
    Ruby
----------------------------
$ grep .+ languages
    C++
----------------------------
$ grep -v J languages
    Ruby
    C++
    TypeScript
    Python
    Ruby
```

Search for the string "meta" in the file `~/mobile_first_design/index.html`
```
$ grep meta ~/mobile_first_design/index.html
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
```


