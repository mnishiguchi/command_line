# Handling compressed files

- Designed to work directly with compressed files.
- IMPORTANT: When working with compressed files many standard commands can not be used directly.
- zcat, zless, zdiff, and zgrep, etc.

### To view a compressed file
```
$ zcat compressed-file.txt.gz   
```

### To page through a compressed file
```
$ zless <filename>.gz
```

### To search inside a compressed file
```
$ zgrep -i less test-file.txt.gz    
```

### To compare two compressed files
```
$ zdiff filename1.txt.gz filename2.txt.gz    
```

- Note: if you run zless on an uncompressed file, it will still work and ignore the decompression stage. There are also equivalent utility programs for other compression methods besides gzip; i.e, we have bzcat and bzless associated with bzip2, and xzcat and xzless associated with xz.

