# User Accounts

- The Linux kernel allows properly authenticated users to access files and applications
- Each user is identified by a unique id
- Upon account creation, new user information is added to the user database
- The user's home directory must be created and populated with some essential files
- Command line programs such as useradd and userdel as well as GUI tools are used for creating and removing accounts

### Seven fields that are maintained in the /etc/passwd file for each user

**Username**
- User login name
- Should be 1..32 chars long

**Password** 
- User password (or the character x if the password is stored in the /etc/shadow file) in encrypted format
- Never shown in Linux when being typed

**User ID (UID)**
- Every user must have a user id (UID) 

``` 
UID       | Description
----------+------------------------------------------------
0         | Root user
1..99     | Other predefined accounts
100..999  | System accounts and groups
1000+     | Normal users
```

**Group ID (GID)** 
- The primary Group ID (GID)
- Group Identification Number stored in the `/etc/group` file

**User Info**
- Optional 
- Allows insertion of extra information about the user

**Home Directory**
- The absolute path location of user's home directory 
- e.g., `/home/masa`

**Shell** 
- The absolute location of a user's default shell     
- e.g., `/bin/bash`


### Types of Accounts

- By default, Linux distinguishes between several account types in order to isolate processes and workloads
- Linux has four types of accounts:
    + root
    + System
    + Normal
    + Network

- Grant the minimum privileges possible and necessary to accounts, and remove inactive accounts
- `$ last` utility
    + Shows the last time each user logged into the system
    + Can be used to find how long a user account has remained inactive

==

## Root Account

- The most privileged account on a Linux/UNIX system
- Has the ability to carry out all facets of system administration, including adding accounts, changing user passwords, examining log files, installing software, etc
- Utmost care must be taken when using this account
- No security restrictions imposed upon it
- By convention, when we are signed in as, or acting as root, the shell prompt displays '#' (intended to serve as a warning to we of the absolute power of this account)

### Becoming Root
- http://www.wikihow.com/Become-Root-in-Linux
```
masa@linuxmint-VM ~ $ su
Password:
linuxmint-VM masa # _
```


### Creating a new user

- At the command prompt, as root:

```
linuxmint-VM masa # useradd christine
linuxmint-VM masa # passwd christine
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
linuxmint-VM masa # _
```

### Operations That Require root Privileges

- root privileges are required to perform operations such as:

    + Creating, removing and managing user accounts.
    + Managing software packages.
    + Removing or modifying system files.
    + Restarting system services.

- Regular account users of Linux distributions may be allowed to install software packages, update some settings, and apply various kinds of changes to the system. However, *root privilege is required for performing administration tasks* such as restarting services, manually installing packages and managing parts of the filesystem that are outside the normal user’s directories.

### Operations That DO NOT Require root Privileges

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
