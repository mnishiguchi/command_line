## `echo`
- Useful for viewing the values of environment variables (built-in shell variables)
- For example, `echo $USERNAME` will print the name of the user who has logged into the current terminal
- [Redirecting and appending](https://www.learnenough.com/command-line-tutorial#sec-redirecting_and_appending)

### Basic operations
- `> `: the redirect operator
- `>>`: the append operator 

```
No files specified | Display a string on standard output (such as the terminal )
> filename         | Create and add lines into a new file
>> filename        | Append lines (or files) to an existing file
```

#### Placing the specified string in a new file
```
$ echo "From fairest creatures we desire increase," > sonnet_1.txt
``` 

#### Appending the specified string to the end of an already existing file
```
echo string >> existingfile 
```

#### Displaying the contents of the specified environment variable
```
echo $variable  
```

==

## `echo -e`
- Support escape sequences
- http://askubuntu.com/questions/537984/difference-between-echo-e-string-and-echo-string
