# File descriptors
- **File descriptor 0**: the standard input (stdin)
- **File descriptor 1**: the standard output (stdout)
- **File descriptor 2**: the standard error (stderr)

### stdin
- File Descriptor 0
- Standard Input
- by default the keyboard/terminal for programs run from the command line

### stdout 
- File Descriptor 1
- Standard output
- by default the screen for programs run from the command line 

### stderr 
- File Descriptor 2
- Standard error
- where output error messages are shown or saved

==

```bash
1> file      redirects stdout to a file
2> file      redirects stderr to a file
1>&2         redirects stdout to stderr
2>&1         redirects stderr to stdout
```
