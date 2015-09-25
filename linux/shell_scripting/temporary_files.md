# Creating Temporary Files and Directories

- The best practice is to create random and unpredictable filenames for temporary storage.
- NOTE: While you can also use touch to create a temporary file, this may make it easy for hackers to gain access to your data.

## Temporary files (and directories)
- Meant to store data for a short time
- Usually one arranges it so that these files disappear when the program using them terminates.

==

## the `mktemp` utility

The XXXXXXXX is replaced by the `mktemp` utility with random characters to ensure the name of the temporary file cannot be easily predicted and is only known within your program.

```bash
TEMP=$(mktemp /tmp/tempfile.XXXXXXXX)      # To create a temporary file
TEMPDIR=$(mktemp -d /tmp/tempdir.XXXXXXXX) # To create a temporary directory
```

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch15_screen36.jpg)

```bash
TEMP=$(mktemp /tmp/tempfile.XXXXXXXX)
echo $VAR > $TEMP
```

==

