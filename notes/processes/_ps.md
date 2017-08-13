# The `ps` Command

- Provides information about currently running processes, keyed by PID.

## System V Style
- Without options, `ps` will display all processes running under the current shell. 
- NOTE: If you want a repetitive update of this status, you can use `top` or commonly installed variants such as `htop` or `atop` from the command line, or invoke your distribution's graphical system monitor application.

### Options:
- `-u`: to display information of processes for a specified **username**. 
- `-ef`: to display all the processes in the system in **full detail**. 
- `-eLf`: to display one line of information for **every thread**.


![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch16_screen14a.jpg)

==

## BSD Style

- Options are specified without preceding dashes.

### Options: 
#### `ps aux`
- Display **all processes of all users**.

```bash
$ ps aux

USER PID %CPU %MEM VSZ   RSS  TTY STAT START TIME COMMAND
root 1   0.0  0.0  19356 1292 ?   Ss   Feb27 0:08 /sbin/init
root 2   0.0  0.0  0     0    ?   S    Feb27 0:00 [kthreadd]
root 3   0.0  0.0  0     0    ?   S    Feb27 0:27 [migration/0]
...
```


#### `ps axo`
- Display all the process in a specific format.
- Specify **which attributes** you want to view.

```bash
$ ps axo stat,priority,pid,pcpu,comm

STAT PRI PID %CPU COMMAND
Ss   20  1   0.0  init
S    20  2   0.0  kthreadd
S   -100 3   0.0  migration/0
...
```

==

