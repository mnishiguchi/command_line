# Script debugging

## Debug mode
Help identify the error 

### Entire script file
```bash
bash –x ./script_file
```

### Selected part of a script
```bash
set -x    # Turn on debugging
...
set +x    # Turn off debugging
```

==

## Redirecting Errors to File and Screen

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

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch15_screen32.jpg)

==

## Examples

Redirecting stderr to a file
```bash
$ bash ./sample.sh 2> error.txt
```

Appending stderr to a file
```bash
$ bash ./sample.sh 2>> /tmp/scriptlogfile
```


