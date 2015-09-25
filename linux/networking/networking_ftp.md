# File transfer protocol (FTP)

- a well-known and popular method for transferring files between computers using the Internet
- built on a client-server model
- can be used within a browser or with standalone client programs

==

## FTP Clients

- Enable us to transfer files with remote computers using the FTP protocol. 

### Graphical tools
- Filezilla
    + The drag-and-drop approach to transfer files between hosts
- Web browsers
    + Use a URL like : `ftp://ftp.example.org` where the usual `http://` becomes `ftp://`

### Command line tools
- `ftp`
- `sftp`
- `ncftp`
- `yafc` (Yet Another FTP Client)

#### sftp
- a very secure mode of connection
- uses the Secure Shell (ssh) protocol
- encrypts its data
- Downside: does not work with anonymous FTP (guest user credentials)

#### ncftp and yafc
- Work on a wide variety of operating systems including Windows and Linux.

==

## Connecting to an FTP server using Command Line ftp Client

### Connect to an anonymous FTP site (ftp.gnu.org)
- The username for anonymous FTP site is `anonymous`
```
$ ftp ftp.gnu.org

Trying 208.118.235.20...
Connected to ftp.gnu.org.
220 GNU FTP server ready.
Name (ftp.gnu.org:masa): anonymous
230-Due to U.S. Export Regulations, all cryptographic software on this
230-site is subject to the following legal notice:
230-
230-    This site includes publicly available encryption source code
230-    which, together with object code resulting from the compiling of
230-    publicly available source code, may be exported from the United
230-    States under License Exception "TSU" pursuant to 15 C.F.R. Section
230-    740.13(e).
230-
230-This legal notice applies to cryptographic software only. Please see
230-the Bureau of Industry and Security (www.bxa.doc.gov) for more
230-information about current U.S. regulations.
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
```

### List the files
```
ftp> ls

229 Entering Extended Passive Mode (|||20549|).
150 Here comes the directory listing.
lrwxrwxrwx    1 0        0               8 Aug 20  2004 CRYPTO.README -> .message
-rw-r--r--    1 0        0           17864 Oct 23  2003 MISSING-FILES
-rw-r--r--    2 0        0            4178 Aug 13  2003 MISSING-FILES.README
-rw-r--r--    1 0        0            1962 Nov 15  2012 README
-rw-r--r--    1 0        0          405121 Oct 23  2003 before-2003-08-01.md5sums.asc
-rw-r--r--    1 0        0          210988 Feb 07 11:25 find.txt.gz
drwxrwxr-x  306 0        3003        12288 Oct 15 00:25 gnu
drwxrwxr-x    3 0        3003         4096 Mar 10  2011 gnu+linux-distros
-rw-r--r--    1 0        0          403782 Feb 07 11:25 ls-lrRt.txt.gz
drwxr-xr-x    3 0        0            4096 Apr 20  2005 mirrors
lrwxrwxrwx    1 0        0              11 Apr 15  2004 non-gnu -> gnu/non-gnu
drwxr-xr-x   90 0        0            4096 Mar 31  2015 old-gnu
lrwxrwxrwx    1 0        0               1 Aug 05  2003 pub -> .
drwxr-xr-x    2 0        0            4096 Nov 08  2007 savannah
drwxr-xr-x    2 0        0            4096 Aug 02  2003 third-party
drwxr-xr-x    2 0        0            4096 Apr 07  2009 tmp
drwxr-xr-x    2 0        0            4096 May 07  2013 video
-rw-r--r--    1 0        0             954 Aug 13  2003 welcome.msg
226 Directory send OK.
```

### Receive the file welcome.msg from the FTP server using `get`
```
ftp> get welcome.msg

local: welcome.msg remote: welcome.msg
229 Entering Extended Passive Mode (|||20689|).
150 Opening BINARY mode data connection for welcome.msg (954 bytes).
100% |***********************************************************************| 954        7.45 MiB/s    00:00 ETA
226 Transfer complete.
954 bytes received in 00:00 (10.53 KiB/s)
```

### Disconnect from the FTP server
```
ftp> quit
221 Goodbye.
```

==

