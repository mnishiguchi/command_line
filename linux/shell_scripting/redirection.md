# Redirection

## Output Redirection

- In shell scripting, you can send the output to a file instead of displaying it on the terminal. The process of diverting the output to a file is called output redirection.

### The `>` character
- Used to write output to a file

Sending the output of `free` to the file `/tmp/free.out`:
```bash
$ free > /tmp/free.out
```

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch14_screen23a.jpg)

### The `>>` characters
- Append output to a file if it exists, and 
- Act just like `>` if the file does not already exist.

==

## Input Redirection

### the `<` character
- The process of reading input from a file

A script file called `script8.sh`
```bash
#!/bin/bash
echo "Line count"
# 1. Read the content of the the `/temp/free.out` file.
# 2. Count the number of lines.
# 3. Display the results.
wc -l < /temp/free.out
```

Execute it
```bash
chmod +x script8.sh ; ./script8.sh
```

==

## File descriptors
- **File descriptor 1**: the standard output (stdout)
- **File descriptor 2**: the standard error (stderr)

```bash
1> file      redirects stdout to a file
2> file      redirects stderr to a file
1>&2         redirects stdout to stderr
2>&1         redirects stderr to stdout
```

### `/dev/null`

- Redirects the stdout to the null device, which is a special device which discards the information written to it

### `2>&1`

- Redirects stderr to stdout
- In practice it **prevents any output from the command (both stdout and stderr) from being displayed**.
- Used when you don't care about the command output.




