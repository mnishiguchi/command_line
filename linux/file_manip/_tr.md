# `tr`

- Used to *translate specified characters* into other characters or to delete them

```
$ tr [options] set1 [set2]
```

- The items in the square brackets are optional
- tr requires at least one argument and accepts a maximum of two

1. set1 - list the characters in the text to be replaced or removed
2. set2 - list the characters that are to be substituted for the characters listed in set1
- IMPORTANT: Sometimes these sets need to be surrounded by `'` in order to have the shell ignore that they mean something special to the shell. It is usually safe to use the single-quotes around each of the sets

## Usage

### Translate all lower case characters to upper case

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
```

### Convert lower case to upper case
```
$ tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ  
```

### Translate braces into parenthesis
```
$ tr '{}' '()' < inputfile > outputfile 
```

### Translate white-space to tabs
```
$ echo "This is for testing" | tr [:space:] '\t'    
```

### Squeeze repetition of characters using -s
```
$ echo "This   is   for    testing" | tr -s [:space:]
```

### Delete specified characters using -d option
```
$ echo "the geek stuff" | tr -d 't' 
```

### Complement the sets using -c option
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
