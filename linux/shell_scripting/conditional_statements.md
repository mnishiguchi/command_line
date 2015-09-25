# Conditional statements
- Use the square brackets (`[]`) to delineate the test condition. 
- In modern scripts, doubled brackets as in `[[ -f /etc/passwd ]]` are also used to avoid some subtle problems.
- [test(1)](http://linux.die.net/man/1/test)

## The `if` statement

General syntax
```
if <condition>
then
    <statements>
else
    <statements>
fi
```

Compact form
```
if <condition> ; then <statements> ; fi
```

--

### Testing for Files

- Can test for file attributes such as:
    + **File or directory existence**
    + **Read or write permission**
    + **Executable permission**
- For the full list of file conditions, use `man 1 test`

```
-e file   |  Check if the file exists.
-d file   |  Check if the file is a directory.
-f file   |  Check if the file is a regular file (i.e., not a symbolic link, device node, directory, etc.)
-s file   |  Check if the file is of non-zero size.
-g file   |  Check if the file has sgid set.
-u file   |  Check if the file has suid set.
-r file   |  Check if the file is readable.
-w file   |  Check if the file is writable.
-x file   |  Check if the file is executable.
```

```bash
#!/bin/bash

echo "Enter a filename"
read filename

# If the file does not exist, create a new file.
if [ ! -e $filename ] ; then
  echo "$filename does not exist"
  echo "creating $filename"
  touch $filename
else
  echo "$filename exists"
fi

# Do ls again.
ls $filenname
```

--

### Testing for Strings

- Use the operator `==` to compare strings

```bash
if [ string1 == string2 ] ; then
   ACTION
fi
```

--

### Testing for numbers

- Syntax: `exp1 -op exp2`

```bash
-eq   |   Equal to
-ne   |   Not equal to
-gt   |   Greater than
-lt   |   Less than
-ge   |   Greater than or equal to
-le   |   Less than or equal to
```

```bash
#!/bin/bash

# Prompt for a user's age.
echo "Please enter your age:"
read AGE

# Display the user's age group.
if [ $AGE -lt 20 ] || [ $AGE -ge 50 ] ; then
  echo "Sorry, you are out of the age range."
elif [ $AGE -ge 20 ] && [ $AGE -lt 30 ] ; then
  echo "You are in your 20's."
elif [ $AGE -ge 30 ] && [ $AGE -lt 40 ] ; then
  echo "You are in your 30's."
elif [ $AGE -ge 40 ] && [ $AGE -lt 50 ] ; then
  echo "You are in your 40's."
fi
```

--

### Testing for variables

- [How to determine if a bash variable is empty?](http://serverfault.com/questions/7503/how-to-determine-if-a-bash-variable-is-empty)

```bash
# Return true if a variable is unset or set to the empty string ("").
if [ -z "$VAR" ];
```

==

## The case Statement
- Enables you to match several values against one variable.
- Is a good alternative to nested multilevel if-then-else-fi statements.

```bash
case <expression> in
   <pattern1> ) execute commands ;;
   <pattern2> ) execute commands ;;
   <pattern3> ) execute commands ;;
   <pattern4> ) execute commands ;;
   * )          execute some default commands or nothing ;;
esac
```

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch15_screen19a.png)
