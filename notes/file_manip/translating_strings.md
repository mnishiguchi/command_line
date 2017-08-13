# Translating strings
- `tr`(Translator), `sed`(Stream editor)

==

## `tr`

```
$ tr [options] set1 [set2]
```

### Translate all lower case characters to upper case
```
$ tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ  
```

```
$ tr a-z A-Z
```

### Translate braces into parenthesis
```
$ tr '{}' '()' < inputfile > outputfile 
```

### Translate white-space to tabs
```
$ echo "This is for testing" | tr [:space:] '\t'    
```

### Squeeze repetition of characters using `-s` option
```
$ echo "This   is   for    testing" | tr -s [:space:]
```

### Delete specified characters using `-d` option
```
$ echo "the geek stuff" | tr -d 't' 
```

### Complement the sets using `-c` option
```
$ echo "my username is 432234" | tr -cd [:digit:]   
```

### Remove all non-printable character from a file
```
$ tr -cd [:print:] < file.txt   
```

### Join all the lines in a file into a single line
```
$ tr -s '\n' ' ' < file.txt 
```

==

### examples

```
$ cat languages
    Ruby
    Japanese
    JavaScript
    C++
    TypeScript
    Python
    Ruby
===============================================
$ cat languages | tr a-z A-Z
    RUBY
    JAPANESE
    JAVASCRIPT
    C++
    TYPESCRIPT
    PYTHON
    RUBY
-----------------------------------------------
$ cat languages | tr '+' '-'
    Ruby
    Japanese
    JavaScript
    C--
    TypeScript
    Python
    Ruby
-----------------------------------------------
$ echo "tr can translate characters into different characters" \
> | tr [:space:] '\t'
    tr  can translate   characters  into    different   characters
-----------------------------------------------
$ cat languages | tr -d '+RJ'
    uby
    apanese
    avaScript
    C
    TypeScript
    Python
    uby
-----------------------------------------------
$ tr '+' 'p' < languages > translated
$ cat translated
    Ruby
    Japanese
    JavaScript
    Cpp
    TypeScript
    Python
    Ruby
-----------------------------------------------
```

==

## `sed`

### first string occurrence in a line
```
sed s/pattern/replace_string/ file 
```

### all string occurrences in a line
```
sed s/pattern/replace_string/g file 
```

### all string occurrences in a range of lines
e.g., line 1 - 3
```
sed 1,3s/pattern/replace_string/g file  
```

### all occurrences and move the result to file2
```
$ sed s/pattern/replace_string/g file1 > file2
```

### examples

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
