# Boolean

- `&&`: AND 
- `||`: OR
- `! `: NOT

## Tests in Boolean Expressions

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

### Check for the existance of:
- file
    + `[ -e <filename> ]`
- directory
    + `[ -d <dirname> ]`
- a 'sym-link'
    + `[ -s <dirname> ]`

### Compare numbers
- `[ $number1 -gt $number2 ]`


![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch15_screen11a.jpg)

