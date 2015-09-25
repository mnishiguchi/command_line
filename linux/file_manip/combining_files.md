# Combining files

## `cat`
- Concatenates multiple files

### Concatenate files and display the output
- i.e., the  entire content of the first file is followed by that of the second file.
```
cat file_1 file_2 
```

### Concatenate files and save into a new file
```
cat file_1 file_2 > newfile   
```

### Append a file to the end of existing file
```
cat file_1 >> existing_file    
```

==

## `paste`
- Used to combine fields from different files as well as combine lines from multiple files. 
- Can combine different columns in multiple files into a single file.
- The different columns are identified based on delimiters.

### Options

`-d delimiters`
- specify a list of delimiters to be used instead of tabs for separating consecutive values on a single line.
- Each delimiter is used in turn; when the list has been exhausted, paste begins again at the first delimiter.
- Common delimiters: 'space', 'tab', '|', 'comma', etc

`-s`
- Causes `paste` to append the data **in series** rather than in parallel

### Usage

#### paste contents from two files
using the default delimiter (a single tab character)
```
$ paste file1 file2
```

using a different delimiter
```
$ paste -d, file1 file2
```

==

## `join`

- Essentially an enhanced version of paste
- Used to combine the files without repeating the data of common columns

### Usage

#### combine two files on a common field
```
join file1 file2
```

==


