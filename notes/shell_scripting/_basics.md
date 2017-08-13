# Shell Scripting

## Scripts
- a sequence of statements and commands stored in a file that can be executed by a shell.
- The most commonly used shell in Linux is **bash**.

## Several of the benefits of deploying scripts
![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch14_screen03.jpg)

- [Lab](https://courses.edx.org/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/BashShellScripting_Solutions.pdf)

## Shell
Shell is a command line interpreter which provides the user interface for terminal windows.

```bash
$ find . -name "*.c" -ls
```

Shell can also be used to run scripts, even in non-interactive sessions without a terminal window, as if the commands were being directly typed in.

```bash
#!/bin/bash
find . -name "*.c" -ls
```

--

### The `#!` in the first line of the script
- The full path of the command interpreter (in this case /bin/bash) that is to be used on the file 
- e.g., `#!/bin/bash` for bash.
- We have a few choices depending upon which scripting language you use.

--

### Command interpreters
- Commonly used interpreters include: 
    + `/usr/bin/perl`
    + `/bin/bash`
    + `/bin/csh`
    + `/usr/bin/python`
    + `/bin/sh`

--

### [Choices of Shells](https://courses.edx.org/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/Chap14_UNIXShell.pdf)

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_chapter14_screen_5.jpg)

- Linux provides a wide choice of shells; exactly what is available on the system is listed in `/etc/shells`.
- Typical choices are:
    + `/bin/sh`
    + `/bin/bash`
    + `/bin/tcsh`
    + `/bin/csh`
    + `/bin/ksh`

- Most Linux users use the **default bash shell**, but those with long UNIX backgrounds with other shells may want to override the default.

==

## Bash Scripts

### Creating an example bash script
```bash
$ cat > exscript.sh
  #!/bin/bash
  echo "HELLO"
  echo "WORLD"
```

### Making a script executable
```bash
$ chmod +x exscript.sh
```

### Running the script
- manually pass a text file to the shell interpreter
```bash
$ bash exscript.sh
  HELLO
  WORLD
```

Creating an interactive bash script
```bash
masa@Masas-Mac:~/linux_and_git_notebook (master)
$ cat > ioscript.sh
#!/bin/bash

# Interactive reading of variables.
# The value is stored in a temporary variable, sname.
echo "ENTER YOUR NAME"
read sname

# Display of variable values.
# We can reference the value of a shell variable by using a `$`.
echo $sname
```

A. Calling the script using bash command
- manually pass a text file to the shell interpreter
```bash
masa@Masas-Mac:~/linux_and_git_notebook (master)
$ bash ioscript.sh
ENTER YOUR NAME
masa
masa
```

B. Calling the script by making it executable
```bash
masa@Masas-Mac:~/linux_and_git_notebook (master)
$ ioscript.sh
-bash: ioscript.sh: command not found

masa@Masas-Mac:~/linux_and_git_notebook (master)
$ chmod +x ioscript.sh && ./ioscript.sh
ENTER YOUR NAME
masa
masa
```

==

## Return values

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch14_screen10.jpg)

- All shell scripts generate a return value upon finishing execution.
- The value can be set with the `exit` statement. 
- By convention, success is returned as 0, and failure is returned as a non-zero value.
- The return value is stored in the environment variable represented by `$?`.

```bash
$ ls /etc/passwd
/etc/ passwd

$ echo $?
0
```

==

## Special Characters

- `#`: Used to add a comment, except when used as `\#`, or as `#!` when starting a script
- `\`: Used at the end of a line to indicate continuation on to the next line
- `;`: Used to interpret what follows as a new command
- `$`: Indicates what follows is a variable

### Splitting Long Commands Over Multiple Lines
![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_Chapter14_Screen12.jpg)

### Putting Multiple Commands on a Single Line
![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch14_screen13.jpg)

Using the `;` operator, all execute even if the ones preceding them fail.
```bash
$ make ; make install ; make clean
```

Using the `&&` operator, we **can abort subsequent commands if one fails**.
```bash
$ make && make install && make clean
```

Using the `||` operator, if the first command fails the second one will never be executed.
```bash
$ cat file1 || cat file2 || cat file3
```

==

## Built-in Shell Commands

- Shell scripts are used to execute sequences of commands and other types of statements.
- Commands can be divided into the following categories:
  
![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_chapter14_screen_15.jpg)

- For a complete list of bash built-in commands: `man bash` or `help`

### Compiled applications
- Binary executable files that you can find on the filesystem. 
- The shell script always has access to compiled applications
- `rm`, `ls`, `df`, `vi`, `gzip`, etc

### Built-in bash commands
- bash has many built-in commands which can only be used to display the output within a terminal shell or shell script. 
- `cd`, `pwd`, `echo`, `read`, `logout`, `printf`, `let`, `ulimit`, etc

