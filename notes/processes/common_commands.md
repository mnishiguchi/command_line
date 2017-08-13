# Linux - Processes - common commands

|   |   |
|---|---|
|ps | Report a snapshot of current processes |
|top | Display tasks |
|jobs | List active jobs |
|pstree | Output a process list arranged in a tree-like pattern showing the parent/child relationships between processes. |
|bg | Place a job in the background |
|fg | Place a job in the foreground |
|kill | Send a signal to a process |
|killall | Kill processes by name |
|shutdown | Shutdown or reboot the system |

## Viewing a snapshot of current processes

#### BSD Style `ps`

```bash
$ ps aux
USER               PID  %CPU %MEM      VSZ    RSS   TT  STAT STARTED      TIME COMMAND
masa               372   3.3  0.8  2630660  70240   ??  R    30Jul17   2:09.66 /Applications/iTerm.app/Contents/MacOS/iTerm2 -psn_0_57358
...
```

```bash
# Specify which attribute you want to see
$ ps axo stat,pid,pcpu,comm
STAT   PID  %CPU COMM
Ss       1   0.0 /sbin/launchd
Us      48   0.0 /usr/libexec/UserEventAgent
Ss      49   0.0 /usr/sbin/syslogd
...
```

#### BSD Style `ps` Column Headers

| Header | Meaning |
|---|---|
| USER | User ID. This is the owner of the process. |
| %CPU | CPU usage in percent. |
| %MEM | Memory usage in percent. |
| VSZ | Virtual memory size. |
| RSS | Resident Set Size. The amount of physical memory (RAM) the process is using in kilobytes. |
| TTY | "Teletype" that refers to the controlling terminal for the process. |
| STAT | Process States |
| START | Time when the process started. For values over 24 hours, a date is used. |
| TIME | The amount of CPU time consumed by the process. |

#### Process States

| State | Meaning |
|---|---|
| R | Running. This means that the process is running or ready to run. |
| S | Sleeping. The process is not running; rather, it is waiting for an event, such as a keystroke or network packet. |
| D | Uninterruptible Sleep. Process is waiting for I/O such as a disk drive. |
| T | Stopped. Process has been instructed to stop. More on this later. |
| Z | A defunct or “zombie” process. This is a child process that has terminated, but has not been cleaned up by its parent. |
| < | A high priority process. It's possible to grant more importance to a process, giving it more time on the CPU. This property of a process is called niceness. A process with high priority is said to be less nice because it's taking more of the CPU's time, which leaves less for everybody else. |
| N | A low priority process. A process with low priority (a “nice” process) will only get processor time after other processes with higher priority have been serviced. |

## Viewing processes dynamically

#### `top`
- used to see the "top" processes on the system
- displays:
  + a system summary
  + a table of processes sorted by CPU activity

```
$ top
```

## Viewing the parent/child relationships between processes

#### `pstree`
Displays the processes running on the system in the form of a tree diagram showing the relationship between a process and its parent process and any other processes that it created.
- **Repeated entries of a process are not displayed**
- **Threads are displayed in curly braces**

```bash
$ pstree | less
```

## Terminating a process

- `kill -SIGKILL <pid>` or `kill -9 <pid>`
- Note: You can only kill your own processes; those belonging to another user are off limits unless you are root.

>  The kill command doesn't exactly “kill” processes, rather it sends them signals. Signals are one of several ways that the operating system communicates with programs.

#### Signals

- [Linux signals](http://www.comptechdoc.org/os/linux/programming/linux_pgsignals.html)

|   |   |
|---|---|
| Ctrl-c | Send INT (Interrupt) signal  |
| Ctrl-z | Send TSTP (Terminal Stop) signal |

NOTE: Ctrl-d is not a signal. It is EOF (End-Of-File)

## References
- [LinuxFoundationX: LFS101x.2 Introduction to Linux](https://www.edx.org/course/introduction-linux-linuxfoundationx-lfs101x-1)
- [The Linux Command Line by William E. Shotts, Jr.](http://wiki.lib.sun.ac.za/images/c/ca/TLCL-13.07.pdf) - 10 - Processes
- [Learn Enough Command Line to Be Dangerous by Michael Hartl](https://www.learnenough.com/command-line-tutorial)
