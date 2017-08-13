## `sort`

- used to rearrange the lines of a text file
- either in ascending or descending order, according to a sort key
- can also sort by particular fields of a file
- The default sort key is the order of the ASCII characters (i.e., essentially alphabetically)

### Usage

#### Sort the lines in the specified file
```
sort <filename> 
```

#### Append the two files, then sort the lines and display the output on the terminal
```
cat file1 file2 | sort  
```

#### Sort the lines in reverse order
```
sort -r <filename>  
```

#### Sort the lines then remove duplicate lines (with the `-u` option)
- equivalent to running `uniq` on the output of `sort`.

```
sort file1 file2 | uniq > file3
```

```
sort -u file1 file2 > file3
```

==

## `uniq`
- Used to remove duplicate lines in a text file and is useful for simplifying text display
- IMPORTANT: Requires that the duplicate entries to be removed are consecutive; run `sort` first and then pipes the output into `uniq`

```
$ cat languages
Ruby
Japanese
JavaScript
C++
TypeScript
Python
Ruby

$ sort languages
C++
Japanese
JavaScript
Python
Ruby
Ruby
TypeScript

$ sort languages | uniq
C++
Japanese
JavaScript
Python
Ruby
TypeScript
```

### Usage

#### Remove duplicate entries from some files

```
sort file1 file2 | uniq > file3
```

```
sort -u file1 file2 > file3
```

#### Count the number of duplicate entries

```
uniq -c filename
```

Bad: `unq` cannot count duplicate correctly because the list is not sorted
```
$ uniq -c languages
   1 Ruby
   1 Japanese
   1 JavaScript
   1 C++
   1 TypeScript
   1 Python
   1 Ruby
```

Good: `unq` can count the consecutive duplicate entries.
```
$ sort languages | uniq -c
   1 C++
   1 Japanese
   1 JavaScript
   1 Python
   2 Ruby
   1 TypeScript
```
