# su vs sudo

In Linux we can use either su or sudo to temporarily grant root access to a normal user; these methods are actually quite different.

### su
- When elevating privilege, we need to enter the root password. **WARNING: Never give the root password to a normal user**
- Once a user elevates to the root account using su, the user can do anything that the root user can do for as long as the user wants, without being asked again for a password.  
- The command has limited logging features. 

### sudo
- When elevating privilege, we need to enter the user’s password (and NOT the root password)
- Offers more features and is considered **more secure and more configurable**. Exactly what the user is allowed to do can be precisely controlled and limited. By default the user will either always have to keep giving their password to do further operations with sudo, or can avoid doing so for a configurable time interval.
- The command has detailed logging features.

==

## sudo features

Has the ability to keep track of unsuccessful attempts at gaining root access.

**Users' authorization for using sudo**
- based on configuration information stored in the `/etc/sudoers` file and in the `/etc/sudoers.d` directory.

**System log**
- A message such as the following would appear in a system log file (usually `/var/log/secure`) when trying to execute sudo bash without successfully authenticating the user:

```
authentication failure; logname=op uid=0 euid=0 tty=/dev/pts/6 ruser=op rhost= user=op
conversation failed
auth could not identify password for [op]
op : 1 incorrect password attempt ;
TTY=pts/6 ; PWD=/var/log ; USER=root ; COMMAND=/bin/bash
```

==

## The sudoers File

Whenever sudo is invoked, a trigger will look at `/etc/sudoers` and the files in `/etc/sudoers.d` to determine if the user has the right to use sudo and what the scope of their privilege is. Unknown user requests and requests to do operations not allowed to the user even with sudo are reported.

**/etc/sudoers file**
- Edit by using `visudo`, which ensures that only one person is editing the file at a time, has the proper permissions, and refuses to write out the file and exit if there is an error in the changes made.
- The basic structure of an entry: `who where = (as_whom) what`

**/etc/sudoers.d directory**
- Most Linux distributions now prefer you add a file in the directory `/etc/sudoers.d` with a name the same as the user.
- This file contains the individual user's sudo configuration, and one should leave the master configuration file untouched except for changes that affect all users.

==

## Sudo Command Logging

- By default, sudo commands and any failures are logged in:
    + `/var/log/auth.log` (the Debian distribution family)
    + `/var/log/messages` or `/var/log/secure` (other systems)
- An important safeguard to allow for tracking and accountability of sudo use. - A typical entry of the message contains:
    + Calling username
    + Terminal info
    + Working directory
    + User account invoked
    + Command with arguments

==

## Operations That Require root Privileges

- root privileges are required to perform operations such as:

    + Creating, removing and managing user accounts.
    + Managing software packages.
    + Removing or modifying system files.
    + Restarting system services.

- Regular account users of Linux distributions may be allowed to install software packages, update some settings, and apply various kinds of changes to the system. However, *root privilege is required for performing administration tasks* such as restarting services, manually installing packages and managing parts of the filesystem that are outside the normal user’s directories.

==

## Operations That DO NOT Require root Privileges

A regular account user can perform some operations requiring special permissions; however, the system configuration must allow such abilities to be exercised.

- **Running a network client**
    + e.g., Sharing a file over the network
- **Using devices such as printers** 
    + e.g., Printing over the network
- **Operations on files that the user has proper permissions to access**
    + e.g., Accessing files that we have access to, or sharing data over the network    
- **Running SUID-root applications**
    + e.g., Executing programs such as passwd.

**SUID**
- Set owner User ID upon execution—similar to the Windows "run as" feature
- a special kind of file permission given to a file
- provides temporary permissions to a user to run a program with the permissions of the file owner (which may be root) instead of the permissions held by the user.
