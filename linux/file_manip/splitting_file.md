# Splitting a file into multiple files

## `split`
- breaks up a large file into equal-sized segments

### split a file into segments
using the default `x` prefix
```
split infile
```

using a different prefix
```
split infile <Prefix>
```

```
$ wc -l american-english
99171 american-english

$ split american-english dictionary

$ ls -l dictionary*
-rw-rw-r 1 me me 8552 Mar 23 20:19 dictionaryab
-rw-rw-r 1 me me 8653 Mar 23 20:19 dictionaryaa
. . .
```
