# Compressing data

- Linux uses a number of methods to perform this compression including:

    + **gzip** The most frequently used Linux compression utility
    + **bzip2** Produces files significantly smaller than those produced by gzip
    + **xz** The most space efficient compression utility used in Linux
    + **zip** Is often required to examine and decompress archives from Windows

Note:
- Generally the more efficient techniques take longer.
- Decompression time doesn't vary as much across different methods.
- The tar utility is often used to group files in an archive and then compress the whole archive at once.

==

## Basic usage

1. There is a file called test
2. Compress the file
3. The `.gz` extension code is appended to the filename
4. Unzip the file
5. The `.gz` extension code is removed from the filename

```
$ ls
test

$ ls -l test
-rw-r--r--  1 masa  staff  55 Feb 14 16:47 test

$ gzip test

$ ls
languages  tee_test   test.gz    translated

$ gunzip test.gz

$ ls
languages  tee_test   test       translated
```

==

## gzip
- **the most oftenly used** Linux compression utility.
- compresses very well and is very fast.

#### Compresses all files in the current directory
- Each file is compressed and renamed with a `.gz` extension.

```
gzip *
```

#### Compresses all files in the projectX directory along with all files in all of the directories under projectX.
```
gzip -r projectX  
```

#### De-compresses foo found in the file foo.gz. (the same as gzip –d)
```
gunzip foo  
```

==

## bzip2
- similar to gzip in syntax but uses a different compression algorithm
- produces significantly smaller files, at the price of taking a longer time to do its work.
- more likely to be used to compress larger files.

#### Compress all of the files in the current directory and replaces each file with a file renamed with a `.bz2` extension.
```
bzip2 * 
```

#### Decompress all of the files with an extension of `.bz2` in the current directory. Under the hood, `bunzip2` is the same as calling `bzip2 -d`.
```
bunzip2 *.bz2   
```

==

## xz
- the most space efficient compression utility used in Linux
- now used by www.kernel.org to store archives of the Linux kernel.
- trades a slower compression speed for an even higher compression ratio.
- Compressed files are stored with a .xz extension.

#### Compress all of the files in the current directory and replace each file with one with a .xz extension.
```
$ xz * 
```

#### Compress the file foo into foo.xz using the default compression level (-6), and remove foo if compression succeeds.
```
xz foo
```

#### Decompress bar.xz into  bar and don't remove bar.xz even if decompression is successful.
```
xz -dk bar.xz 
```

#### Decompress a mix of compressed and uncompressed files to standard output, using a single command.
```
xz -dcf a.txt b.txt.xz > abcd.txt 
```

#### Decompress the files compressed using xz.
```
$ xz -d *.xz  
```

==

## zip
- not often used to compress files in Linux
- but often required to examine and decompress archives from other operating systems
- legacy program.

#### Compresses all files in the current directory and places them in the file backup.zip.
```
zip backup *
```

#### Archives your login directory (~) and all files and directories under it in the file backup.zip.
```
zip -r backup.zip ~ 
```

#### Extracts all files in the file backup.zip and places them in the current directory.
```
unzip backup.zip
```

==

## tar
- Create or extract files from an archive file (aka a tarball)
- At the same time you can optionally compress while creating the archive, and decompress while extracting its contents.
- Historically stood for "tape archive" and was used to archive files to a magnetic tape. 

#### Create the archive and compress with gzip
```
$ tar -zcvf mydir.tar.gz mydir
```

#### Create the archive and compress with bz2
```
$ tar -jcvf mydir.tar.bz2 mydir 
```

#### Create the archive and compress with xz
```
$ tar -Jcvf mydir.tar.xz mydir  
```

#### Extract all the files in `mydir.tar` into the `mydir` directory
```
$ tar -xvf mydir.tar
```

#### Extract all the files in `mydir.tar.gz` into the `mydir` directory.
(Note: you do not have to tell tar it is in gzip format.)
```
$ tar -xvf mydir.tar.gz 
```

==

