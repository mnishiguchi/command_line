## `cat`
- often used to read and print files as well as for simply viewing file contents
- [Redirecting and appending](https://www.learnenough.com/command-line-tutorial#sec-redirecting_and_appending)

### Basic operations

```
No files specified | Read from standard input (such as the terminal window)
> filename         | Create and add lines into a new file
>> filename        | Append lines (or files) to an existing file
```

#### Reading from standard input and write into the file

##### until CTRL-D is typed
```
$ cat > test
I am creating a file called test and writing text into it.
When done, I hit Control-D at the beginning of a new line.
```

##### until EOF at the beginning of a line
```
$ cat > test << EOF
> I am creating a file called test and writing text into it.
> When done, I type EOF at the beginning of a new line and hit enter.
> EOF
```

#### Viewing a file
- Dumps the contents of the file to the screen 

```
$ cat filename
```

#### Concatenating multiple files
##### displaying the output
- i.e., the  entire content of the first file is followed by that of the second file.
```
cat file_1 file_2 
```

##### saving the output into a new file
```
cat file_1 file_2 > newfile   
```

#### Appending a file
##### to the end of existing file
```
cat file_1 >> existing_file    
```

##### to the file until CTRL-D is typed
```
cat >> filename 
```

==

## `tac` (`cat` spelled backwards)
- prints the lines of a file in reverse order.
- (Each line remains the same but the order of lines is inverted.)
- The syntax of tac is exactly the same as for cat as in:

```
$ tac file
```

```
$ tac file_1 file_2 > newfile
```



