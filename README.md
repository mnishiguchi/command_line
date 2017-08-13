# Linux notes

- [environment](https://gist.github.com/mnishiguchi/323ac53152cc2a4fbba71ae54ebd1ef0)
- [expansions](https://gist.github.com/mnishiguchi/087d83e9c5f9bd73dc5493de29b20469)
- [keyboard tricks](https://gist.github.com/mnishiguchi/551827405074c3f2a08d8875c850deff)
- [man pages](https://gist.github.com/mnishiguchi/d064099c6573e0e434e390d79d874fa8)
- [network](https://gist.github.com/mnishiguchi/690b59ba312f3dce246666065722cc5f)
- [processes](https://github.com/mnishiguchi/linux_notes/tree/master/notes/processes)
- [processes - commands](https://gist.github.com/mnishiguchi/f6e9c1c42abaaab18e656ae7f978ff06)
- [vim](https://gist.github.com/mnishiguchi/b8f2effca20fa181ac491735d6ffa07c)

---

## [Command Line Fu](http://www.commandlinefu.com/commands/browse/sort-by-votes)

```bash
# Jump to a directory, execute a command and jump back to current dir
$ (cd /tmp && ls)
```

```bash
# Quick access to the ascii table.
$ man ascii
```

```bash
# Get your external IP address
$ curl ifconfig.me
```

---

## Keeping Current

#### Best practice
- take advantage of your Linux distribution's mechanism for automatic updates and never postpone them
- It is extremely rare that such an update will cause new problems.

#### Linux distribution's mechanism for automatic updates
When security problems in either the Linux kernel or applications and libraries are discovered, Linux distributions have a good record of reacting quickly and pushing out fixes to all systems by updating their software repositories and sending notifications to update immediately. The same thing is true with bug fixes and performance improvements that are not security related.

#### Consequence of delaying updates
It is well known that **many systems do not get updated frequently enough** and problems which have already been cured are allowed to remain on computers for a long time; this is **particularly true with proprietary operating systems** where users are either uninformed or distrustful of the vendor's patching policy as sometimes updates can cause new problems and break existing operations. **Many of the most successful attack vectors come from exploiting security holes for which fixes are already known but not universally deployed.**

---

## X Window System (X or XWindows)
- https://www.debian.org/doc/manuals/debian-reference/ch07.en.html
- The X Window System (sometimes referred to as "X" or as "XWindows") is an open, cross-platform, client/server system for managing a windowed graphical user interface in a distributed network. In general, such systems are known as windowing systems. In X Window, the client-server relationship is reversed from the usual.
- If the display manager is not started by default in the default runlevel, you can start the X-Window System by running the `startx` command from the command-line.

---

## [Network Time Protocol daemon](https://wiki.archlinux.org/index.php/Network_Time_Protocol_daemon)
- Network Time Protocol is the most common method to synchronize the software clock of a GNU/Linux system with internet time servers.
- For best coordination between multiple Linux systems, you should set the date and time, using the Network Time Protocol (NTP) so that machines are automatically very close to the same time.

---

## [Master boot record (MBR)](https://wiki.archlinux.org/index.php/Master_Boot_Record)
- The Master Boot Record (MBR) is the first 512 bytes of a storage device. It contains an operating system bootloader and the storage device's partition table.
- The `dd` is useful for creating a backup of a disk Master Boot Record (MBR).

```bash
dd if=/dev/sda of=/path/mbr-backup bs=512 count=1
```

---

## References

- LinuxFoundationX: LFS101x.2 Introduction to Linux
- [Learn Enough Command Line to Be Dangerous](https://www.learnenough.com/command-line-tutorial)
- [The Linux Command Line](http://wiki.lib.sun.ac.za/images/c/ca/TLCL-13.07.pdf)
- [Command Line Fu](http://www.commandlinefu.com/commands/browse/sort-by-votes)
