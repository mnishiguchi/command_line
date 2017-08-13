# Links

## Hard links

- very useful to save space

```
$ ln file1 file2
```

- Must be used carefully, sometimes in subtle ways
    + The inode number is the same for both of these files;
    it is only one file but it has more than one name associated with it,  as is indicated by the 3 that appears in the ls output.
    Thus, there already was another object linked to file1 before the command was executed.
    + If you remove either file1 or file2 in the example, the inode object (and the remaining file name) will remain, which might be undesirable as it may lead to subtle errors later if you recreate a file of that name.

- **the inode number**
    + a unique quantity for each file object
    + `ls -li` prints out the inode number in the first column

==

## Symbolic Links (symlinks)

- take no extra space on the filesystem (unless their names are very long).
- extremely convenient as they can easily be modified to point to different places.
- An easy way to create a shortcut from your home directory to long pathnames

**ln -s origin_filename dest_filename_or_dirname**
    - used to create symbolic links or symlinks.

**ln -sf origin_filename dest_filename_or_dirname**
    - **-f**: If the target file already exists, then unlink it so that the link may occur.

```
ln -sf ~/dotfiles/.vimrc ~/.vimrc
```

```
# Find a directory and create a symbolic link from home to it.

$ cd
$ find / -type d -name init.d
$ ln -s /etc/init.d .
```

### dangling links
- Unlike hard links, symlinks can point to objects even on different filesystems (or partitions) which may or may not be currently available or even exist.
- In the case where the link does not point to a currently available or existing object, you obtain a dangling link.

==


